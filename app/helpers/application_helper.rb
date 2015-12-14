# Defining helper methods for calls from views/layouts/application.html
module ApplicationHelper
  # For assets names spacing, concatenating controller and action
  def concatenate_controller_action(controller_arg = controller_name,
                                    action_arg = action_name)
    controller_arg + '_' + action_arg
  end

  # Returns link tags for apple devices
  def apple_icons
    apple_icon_sizes_array = [57, 60, 72, 76, 114, 120, 144, 152]

    icon_tags('apple-touch-icon-precomposed',
              'apple-touch-icon',
              apple_icon_sizes_array)
  end

  # Returns link tags for browsers
  def browser_favicons
    other_icon_sizes_array = [16, 32, 96, 128, 196]

    icon_tags('icon',
              'favicon',
              other_icon_sizes_array)
  end

  # Returns Microsft related icons
  def microsoft_icons
    # An empty String
    html = ''

    # Concatenate to string
    html << tag('meta', name: 'application-name', content: '&nbsp;'.html_safe)

    html << tag('meta', name: 'msapplication-TileColor', content: '#FFFFFF')

    microsoft_icon_sizes_array = [70, 144, 150, 310]

    microsoft_icon_sizes_array.each do |size|
      size_squared = "#{size}x#{size}"

      html << tag('meta',
                  name: "msapplication-square#{size_squared}logo",
                  content: image_path("Favicon/mstile-#{size_squared}.png"))
    end

    # return html safe string
    html.html_safe
  end

  # A generic method for favicons after refactoring
  def icon_tags(type_of_rel, file_prefix, size_array)
    # # derived from SO#20327068 as a method returns only one value
    # # An empty String
    html = ''

    size_array.each do |size|
      size_squared = "#{size}x#{size}"

      # Concatenate to string
      html << favicon_link_tag(
          image_path("Favicon/#{file_prefix}-#{size_squared}.png"),
          rel: type_of_rel,
          sizes: "#{size_squared}")
    end

    # return html safe string
    html.html_safe
  end
end
