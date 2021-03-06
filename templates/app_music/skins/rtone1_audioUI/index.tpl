<!-- Thanks Rodrigo for a great player: https://github.com/rtone1/audioUI -->

<link rel="stylesheet" href="/templates/app_music/skins/{$skin|escape:'url'}/style.css">

<div id="{$container}" class="playerContainer unselectable">
	<div class="app_music_loading_screen"></div>
	<div class="imageDisplay app_music_cover_image">
		<div class="volumeIcon"></div>
		<div class="hamIcon">
			<div class="top"></div>
			<div class="middle"></div>
			<div class="bottom"></div>
		</div>
		<div class="shadow"></div>
	</div>
	<div class="audioVolume">
		<div class="progressBar app_music_volume_progress_container" data-type="vertical">
			<div class="thumbScrubber app_music_volume_scrubber_element" data-type="vertical"></div>
		</div>
	</div>
	<div class="audioPlaylist">
		<div class="nowPlaying app_music_cover_image">
			<h2>Сейчас играет</h2>
			<p class="app_music_track_title_text">&nbsp;</p>
			<p class="duration"><em class="app_music_track_time_text">00:00</em> / <em class="app_music_track_length_text">00:00</em></p>
			<div class="arrow"></div>
			<div class="listShadow"></div>
		</div>
		<div class="songList">
			<ol class="app_music_tracklist_list"></ol>
		</div>
	</div>
	<div class="controlsContainer" >
		<div class="topControls">
			<div class="shuffle app_music_pl_random_button" title="Случайный порядок"></div>
			<div class="progressMeter" >
				<div class="progressBar app_music_track_progress_container" data-type="horizontal">
					<div class="thumbScrubber app_music_track_scrubber_element" data-type="horizontal"></div>
				</div>
				<div class="currentTime app_music_track_time_text">00:00</div>
				<div class="totalTime app_music_track_length_text">00:00</div>
			</div>
			<div class="loop app_music_pl_loop_repeat_button" title="Режим повтора: всё, одна дорожка, без повтора"></div>
		</div>
		<div class="descriptionCtn">
			<div class="songDescription app_music_track_title_text marquee">&nbsp;</div>
			<div class="songDescription app_music_track_title_text marqueetwo">&nbsp;</div>
		</div>
		<div class="playPause">
			<div class="prev app_music_previous_button" title="Предыдущий трек"></div>
			<div class="play_pause app_music_pause_button active" title="Воспроизведение / Пауза"></div>
			<div class="next app_music_next_button" title="Следующий трек"></div>
		</div>
	</div>
</div>

<script type="text/javascript">
	var music_player = new app_music('{$terminal}');
	$(document).ready(function () {
		music_player.init_player(function() {
			$(music_player.container).find('.volumeIcon').on('click', function() {
				$(music_player.container).find('.audioVolume').slideToggle(500, 'swing');
			});
			$(music_player.container).find('.arrow,.hamIcon').on('click', function() {
				$(music_player.container).find('.audioPlaylist').slideToggle(500, 'swing');
			});
		});
	});
</script>
