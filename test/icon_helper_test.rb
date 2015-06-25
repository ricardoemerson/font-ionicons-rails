require 'test_helper'

class FontIonicons::Rails::IconHelperTest < ActionView::TestCase
  test '#ion_icon with no args should render a flag icon' do
    assert_icon i('ion-flag')
  end

  test '#ion_icon should render different individual icons' do
    assert_icon i('ion-flag'),         'flag'
    assert_icon i('ion-camera-retro'), 'camera-retro'
    assert_icon i('ion-cog'),          'cog'
    assert_icon i('ion-github'),       'github'
  end

  test '#ion_icon should incorporate additional class styles' do
    assert_icon i('ion-flag pull-right'),                'flag',         class: 'pull-right'
    assert_icon i('ion-check pull-right special'),       'check',        class: ['pull-right', 'special']
  end

  test '#ion_icon should incorporate a text suffix' do
    assert_icon "#{i('ion-camera-retro')} Take a photo", 'camera-retro', text: 'Take a photo'
  end

  test '#ion_icon should be able to put the icon on the right' do
    assert_icon "Submit #{i('ion-chevron-right')}", 'chevron-right', text: 'Submit', right: true
  end

  test '#ion_icon should html escape text' do
    assert_icon "#{i('ion-camera-retro')} &lt;script&gt;&lt;/script&gt;", 'camera-retro', text: '<script></script>'
  end

  test '#ion_icon should not html escape safe text' do
    assert_icon "#{i('ion-camera-retro')} <script></script>", 'camera-retro', text: '<script></script>'.html_safe
  end

  test '#ion_icon should pull it all together' do
    assert_icon "#{i('ion-camera-retro pull-right')} Take a photo", 'camera-retro', text: 'Take a photo', class: 'pull-right'
  end

  test '#ion_icon should pass all other options through' do
    assert_icon %(<i class="ion-user" data-id="123"></i>), 'user', data: { id: 123 }
  end

  private

  def assert_icon(expected, *args)
    message = "`ion_icon(#{args.inspect[1...-1]})` should return `#{expected}`"
    assert_dom_equal expected, ion_icon(*args), message
  end

  def i(classes)
    %(<i class="#{classes}"></i>)
  end
end
