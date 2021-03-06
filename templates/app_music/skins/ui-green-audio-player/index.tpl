<!-- Made by Greg Hovanesyan: https://codepen.io/gregh/pen/NdVvbm -->

<link rel="stylesheet" href="/templates/app_music/skins/{$skin|escape:'url'}/style.css">

<div id="{$container}" class="audio green-audio-player">
	<div class="loading app_music_loading_screen"></div>
	<div class="previous-btn app_music_previous_button" title="Предыдущий трек"></div>
	<div class="play-pause-btn app_music_pause_button" title="Воспроизведение / Пауза"></div>
	<div class="next-btn app_music_next_button" title="Следующий трек"></div>
	<div class="controls">
		<span class="current-time app_music_track_time_text">0:00</span>
		<div class="slider app_music_track_progress_container" data-type="horizontal">
			<div class="progress app_music_track_progress_element" data-type="horizontal">
				<div class="pin app_music_track_scrubber_element" data-type="horizontal"></div>
			</div>
		</div>
		<span class="total-time app_music_track_length_text">0:00</span>
	</div>
	<div class="volume-btn">
	</div>
</div>

<script type="text/javascript">
	var music_player = new app_music('{$terminal}');
	$(document).ready(function () {
		music_player.init_player(function() {
			$(music_player.container).find('.volume-btn').on('click', function() {
				var _this = this;
				if($(this).hasClass('mute')) {
					music_player.set_volume(100, function() {
						$(_this).removeClass('mute');
					});
				} else {
					music_player.set_volume(0, function() {
						$(_this).addClass('mute');
					});
				}
			});
		});
	});
</script>
