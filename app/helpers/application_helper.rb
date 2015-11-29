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

    # derived from SO#20327068 as a method returns only one value
    # An empty String
    html = ''
    apple_icon_sizes_array.each do |size|
      size_squared = "#{size}x#{size}"

      # Concatenate to string
      html << favicon_link_tag(
          image_path("Favicon/apple-touch-icon-#{size_squared}.png"),
          rel: 'apple-touch-icon-precomposed',
          sizes: "#{size_squared}")
    end

    # return html safe string
    html.html_safe
  end

  # Returns link tags for browsers
  def browser_favicons
    other_icon_sizes_array = [16, 32, 96, 128, 196]

    # An empty String
    html = ''
    other_icon_sizes_array.each do |size|
      size_squared = "#{size}x#{size}"

      # Concatenate to string
      html << favicon_link_tag(
          image_path("Favicon/favicon-#{size_squared}.png"),
          rel: 'icon',
          sizes: "#{size_squared}")
    end

    # return html safe string
    html.html_safe
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
end
