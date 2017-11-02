module Jekyll
  class ShowPubs < Liquid::Tag
    def initialize(tag_name, params, options)
      super
      @project = params.strip()
    end

    def render(context)
      @output = ''
      build_output(context)
      @output
    end

    private

    def build_output(context)
      @authors       = context['site.publication_author_names']
      @path_to_files = context['site.baseurl'] + context['site.publication_files_path']
      pub_types      = context['site.data.publication_types']

      load_pubs(context)
      load_pub_types_to_display(pub_types)
      read_arr(1, pub_types)
    end

    def load_pubs(context)
      @pubs = context['site.data.publications']
      # filter pubs by project 
      if @project != ''
        @pubs = @pubs.select do 
          |p| p['projects'] && p['projects'].include?(@project) 
        end
      end
      # sort pubs by date in reverse chronological order
      @pubs = @pubs.sort { |b,a| a['date'] <=> b['date'] }
    end

    def load_pub_types_to_display(pub_types)
      # pub types that need headings: those that have pubs + their parents
      @pub_types_to_display = {}
      # add pub types of pubs to display
      @pubs.each do |p| 
        @pub_types_to_display[p['type']] = 1
      end 
      # add all ancestors of pub types to display
      pub_types.each do |pt|
        process_node(pt, [])
      end
    end

    def process_node(node, parents)
      #if node's type will be displayed, add all its ancestors too
      if !parents.empty?
        if @pub_types_to_display.include?(node['type'])
          parents.each do |parent|
            @pub_types_to_display[parent['type']] = 1
          end
        end
      end
      #now process all children
      if node.include?('subtypes')
        node['subtypes'].each do |subtype|
          process_node(subtype, parents + [node])
        end
      end
    end

    def read_arr(level, pub_types)
      pub_types.each do |pub_type|
        if @pub_types_to_display.include?(pub_type['type'])

          if level == 1
            div_class = ''
          else
            div_class = ' class="ic4f-indent"'
          end

          @output += '<div' + div_class + '>'
          h_tag = 'h' + level.to_s
          @output += '<' + h_tag + '>' + pub_type['heading'] + '</' + h_tag + '>'

          if pub_type.has_key?('subtypes') #no pubs here; get subtypes
            read_arr(level + 1, pub_type['subtypes'])
          else #display pubs which match the current type
            pubs_of_type = @pubs.select { |p| p['type'] == pub_type['type'] }

            if pubs_of_type.size > 0
              @output += '<ol>'
              pubs_of_type.each do |pub|
                display_pub(pub)
              end
              @output += '</ol>'
            end

          end

          @output += '</div>'
        end
      end
    end

    def display_pub(pub)
      entry = pub['entry']
      @authors.each do |author|
        entry.sub!(author, '<strong>' + author + '</strong>')
      end
      @output += '<li class="mb-3">' + entry + add_links(pub) + '</li>'
    end

    def add_links(pub)
        url_link = '' 
        if pub.has_key?('url')
            url_link = ' <a class="ic4f-nowrap" href="' + pub['url'] + '">'
            url_link = url_link + '<i class="material-icons md-18">exit_to_app</i>'
            url_link = url_link + '<span class="ic4f-download">link to publication</span></a>'
        end

        file_link = ''
        if pub.has_key?('file')
            file_link = ' <a class="ic4f-nowrap" href="' + @path_to_files + pub['file'] + '">'
            file_link = file_link + '<i class="material-icons md-18">file_download</i>'
            file_link = file_link + '<span class="ic4f-download">full text</span></a>'
        end

        links = url_link + ' ' + file_link
        links.rstrip()
    end
  end
end

Liquid::Template.register_tag('show_pubs', Jekyll::ShowPubs)
