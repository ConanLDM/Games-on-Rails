module SearchHelper
  def search_input(name, placeholder, required = true, classes = 'input')
    content_tag :div, class: 'container' do
      concat text_field_tag(name, nil, class: classes, required: required, placeholder: placeholder)
      concat(
        content_tag(:div, class: 'icon') do
          tag.svg(
            content_tag(:title, 'Search') +
            tag.path(nil, d: 'M221.09 64a157.09 157.09 0 10157.09 157.09A157.1 157.1 0 00221.09 64z', fill: 'none', stroke: 'currentColor', 'stroke-miterlimit': '10', 'stroke-width': '32') +
            tag.path(nil, fill: 'none', stroke: 'currentColor', 'stroke-linecap': 'round', 'stroke-miterlimit': '10', 'stroke-width': '32', d: 'M338.29 338.29L448 448'),
            xmlns: 'http://www.w3.org/2000/svg', class: 'ionicon', viewBox: '0 0 512 512'
          )
        end
      )
    end
  end
end
