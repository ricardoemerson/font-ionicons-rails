require 'test_helper'

class IonIcons::Rails::IconHelperTest < ActionView::TestCase
  # test '#ion_icon with no args should render a flag icon' do
  #   assert_icon i('ion-flag')
  # end
  # #
  # test '#ion_icon should render different individual icons' do
  #   assert_icon i('ion-flag'),         'flag'
  #   assert_icon i('ion-camera-retro'), 'camera-retro'
  #   assert_icon i('ion-cog'),          'cog'
  #   assert_icon i('ion-github'),       'github'
  # end
  #
  # test '#ion_icon should render icons with multiple modifiers' do
  #   assert_icon i('ion-pencil fa-fixed-width'), 'pencil fixed-width'
  #   assert_icon i('ion-flag fa-4x'),            'flag 4x'
  #   assert_icon i('ion-refresh fa-2x fa-spin'), 'refresh 2x spin'
  # end
  #
  # test '#ion_icon should render icons with array modifiers' do
  #   assert_icon i('ion-flag'),                  ['flag']
  #   assert_icon i('ion-check fa-li'),           %w(check li)
  #   assert_icon i('ion-flag fa-4x'),            %w(flag 4x)
  #   assert_icon i('ion-refresh fa-2x fa-spin'), %w(refresh 2x spin)
  # end
  #
  # test '#ion_icon should incorporate additional class styles' do
  #   assert_icon i('ion-flag pull-right'),                'flag',         class: 'pull-right'
  #   assert_icon i('ion-flag fa-2x pull-right'),          %w(flag 2x), class: ['pull-right']
  #   assert_icon i('ion-check fa-li pull-right special'), 'check li',     class: 'pull-right special'
  #   assert_icon i('ion-check pull-right special'),       'check',        class: ['pull-right', 'special']
  # end
  #
  # test '#ion_icon should incorporate a text suffix' do
  #   assert_icon "#{i('ion-camera-retro')} Take a photo", 'camera-retro', text: 'Take a photo'
  # end
  #
  # test '#ion_icon should be able to put the icon on the right' do
  #   assert_icon "Submit #{i('ion-chevron-right')}", 'chevron-right', text: 'Submit', right: true
  # end
  #
  # test '#ion_icon should html escape text' do
  #   assert_icon "#{i('ion-camera-retro')} &lt;script&gt;&lt;/script&gt;", 'camera-retro', text: '<script></script>'
  # end
  #
  # test '#ion_icon should not html escape safe text' do
  #   assert_icon "#{i('ion-camera-retro')} <script></script>", 'camera-retro', text: '<script></script>'.html_safe
  # end
  #
  # test '#ion_icon should pull it all together' do
  #   assert_icon "#{i('ion-camera-retro pull-right')} Take a photo", 'camera-retro', text: 'Take a photo', class: 'pull-right'
  # end
  #
  # test '#ion_icon should pass all other options through' do
  #   assert_icon %(<i class="ion-user" data-id="123"></i>), 'user', data: { id: 123 }
  # end
  #
  # test '#ion_stacked_icon with no args should render a flag icon' do
  #   expected = %(<span class="fa-stack">#{i('ion-square-o fa-stack-2x')}#{i('ion-flag fa-stack-1x')}</span>)
  #   assert_stacked_icon expected
  # end
  #
  # test '#ion_stacked_icon should render a stacked icon' do
  #   expected = %(<span class="fa-stack">#{i('ion-square-o fa-stack-2x')}#{i('ion-twitter fa-stack-1x')}</span>)
  #   assert_stacked_icon expected, 'twitter', base: 'square-o'
  #   expected = %(<span class="fa-stack">#{i('ion-square fa-stack-2x')}#{i('ion-terminal fa-inverse fa-stack-1x')}</span>)
  #   assert_stacked_icon expected, %w(terminal inverse), base: ['square']
  # end
  #
  # test '#ion_stacked_icon should incorporate additional class styles' do
  #   expected = %(<span class="fa-stack pull-right">#{i('ion-square-o fa-stack-2x')}#{i('ion-twitter fa-stack-1x')}</span>)
  #   assert_stacked_icon expected, 'twitter', base: 'square-o', class: 'pull-right'
  # end
  #
  # test '#ion_stacked_icon should reverse the stack' do
  #   expected = %(<span class="fa-stack">#{i('ion-facebook fa-stack-1x')}#{i('ion-ban fa-stack-2x')}</span>)
  #   assert_stacked_icon expected, 'facebook', base: 'ban', reverse: 'true'
  # end
  #
  # test '#ion_stacked_icon should be able to put the icon on the right' do
  #   expected = %(Go <span class="fa-stack">#{i('ion-square-o fa-stack-2x')}#{i('ion-exclamation fa-stack-1x')}</span>)
  #   assert_stacked_icon expected, 'exclamation', text: 'Go', right: true
  # end
  #
  # test '#ion_stacked_icon should html escape text' do
  #   expected = %(<span class="fa-stack">#{i('ion-check-empty fa-stack-2x')}#{i('ion-twitter fa-stack-1x')}</span> &lt;script&gt;)
  #   assert_stacked_icon expected, 'twitter', base: 'check-empty', text: '<script>'
  # end
  #
  # test '#ion_stacked_icon should not html escape safe text' do
  #   expected = %(<span class="fa-stack">#{i('ion-square-o fa-stack-2x')}#{i('ion-twitter fa-stack-1x')}</span> <script>)
  #   assert_stacked_icon expected, 'twitter', base: 'square-o', text: '<script>'.html_safe
  # end
  #
  # test '#ion_stacked_icon should accept options for base and main icons' do
  #   expected = %(<span class="fa-stack">#{i('ion-camera fa-stack-1x text-info')}#{i('ion-ban fa-stack-2x text-error')}</span>)
  #   assert_stacked_icon expected, 'camera', base: 'ban', reverse: true, base_options: { class: 'text-error' }, icon_options: { class: 'text-info' }
  # end
  #
  # test '#ion_stacked_icon should pass all other options through' do
  #   expected = %(<span class="fa-stack" data-id="123">#{i('ion-square-o fa-stack-2x')}#{i('ion-user fa-stack-1x')}</span>)
  #   assert_stacked_icon expected, 'user', base: 'square-o', data: { id: 123 }
  # end

  private

  def assert_icon(expected, *args)
    message = "`ion_icon(#{args.inspect[1...-1]})` should return `#{expected}`"
    assert_dom_equal expected, ion_icon(*args), message
  end

  def assert_stacked_icon(expected, *args)
    message = "`ion_stacked_icon(#{args.inspect[1...-1]})` should return `#{expected}`"
    assert_dom_equal expected, ion_stacked_icon(*args), message
  end

  def i(classes)
    %(<i class="#{classes}"></i>)
  end
end
