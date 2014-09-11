$(window).load(function(){
  /* myplaylist= audio juke box, myplaylist2= radio, myplaylist3= video */

/*$.ajax({ 
        type: 'GET',
        url:window.location.pathname ,
        dataType: "json",
        success: function(json){
          $.each(json.audios,function(index, audio){
            $.each(audio, function(index, audio) {
              var w=JSON.stringify(audio)
              alert(w)
              myPlaylist.add({title:(audio.name), m4a:(audio.audio.audio.url), artist:(audio.artist)});
              });
                 });
              }
           }); */
$.ajax({ 
        type: 'GET',
        url:window.location ,
        dataType: "json",
        success: function(json){
           $.each(json,function(data){ 
            myPlaylist.add({title:$(this).attr("name"), artist:$(this).attr("artist"), m4a:$(this).attr("audio_url")});
             });
              }
           });

$.getJSON("../audios.json",function(data){ 
        $.each(data,function(index,audio){
         myPlaylist2.add({title:(audio.name),m4a:(audio.audio.audio.url)});
          myPlaylist2.shuffle();
        })
         });


$.ajax({ 
        type: 'GET',
        url:window.location.pathname ,
        dataType: "json",
        success: function(json){
          $.each(json,function(data){ 
            myPlaylist3.add({title:$(this).attr("video_identifier"),m4v:$(this).attr("video_url")})
             });
              }
           });

/*$('.play').on("click",function(){
    $.ajax({ 
        type: 'GET',
        url:window.location.pathname ,
        dataType: "json",
        success: function(json){
          alert("vanthidichi")
              }
           });
  }); 

/*$('.play').on("click",function(){
  $(this).each(function(){
    url=this.href 
    $.getJSON(url,function(data){
      $.each(data,function(data){ 
            myPlaylist3.add()
            myPlaylist3.add({title:$(this).attr("video_identifier"),m4v:$(this).attr("video_url")})
             });
         });
      }); 
      return false;
 });  
*/

 $("#jquery_jplayer_1").bind($.jPlayer.event.setmedia, function(event) { 
  $("#jquery_jplayer_1").jPlayer("play");
    });

 $("#jquery_jplayer_1").bind($.jPlayer.event.play, function(event) {
    $('#current-track').empty();
    $('#current-track').append(myPlaylist.playlist[myPlaylist.current].title) ;
});

  $("#jquery_jplayer_3").bind($.jPlayer.event.setmedia, function(event) { 
  $("#jquery_jplayer_3").jPlayer("play");
    });
  var myPlaylist = new jPlayerPlaylist({
  jPlayer: "#jquery_jplayer_1",
  cssSelectorAncestor: "#jp_container_1"
  }, 
  [
   
  ], 
{
    playlistOptions: {
    autoPlay: false,
    loopOnPrevious: false,
    shuffleOnLoop: false,
     addTime: 'fast',
     enableRemoveControls: true

},
    supplied: "m4a,ogg,mp3",
    preload: "auto",
    


  });

  var myPlaylist2 = new jPlayerPlaylist({
  jPlayer: "#jquery_jplayer_2",
  cssSelectorAncestor: "#jp_container_2"
  }, 
  [
   
  ], 
{
     playlistOptions: {
     autoPlay: false,
     loopOnPrevious: false,
     shuffleOnLoop: true,
     enableRemoveControls: false,
     displayTime: 'slow',
     addTime: 'fast',
     removeTime: 'fast',
     shuffleTime: 'slow',
    
},
    supplied: "m4a,ogg,mp3",
    preload: "auto"

  });


  var myPlaylist3 = new jPlayerPlaylist({
  jPlayer: "#jquery_jplayer_3",
  cssSelectorAncestor: "#jp_container_3"
  }, 
  [
   
  ], 
{
    playlistOptions: {
    autoPlay: true,
},
    supplied: "mp4,m4v",
    preload: "auto",
   swfPath:"/scripts/banana.swf"
  });


  var stream = {
    title: "ideology",
    mp3: "http://202.88.237.208:8000/;stream/1"
  },
  ready = false;

  $("#jquery_jplayer_4").jPlayer({
    ready: function (event) {
      ready = true;
      $(this).jPlayer("setMedia", stream);
    },
    pause: function() {
      $(this).jPlayer("clearMedia");
    },
    error: function(event) {
      if(ready && event.jPlayer.error.type === $.jPlayer.error.URL_NOT_SET) {
        // Setup the media stream again and play it.
        $(this).jPlayer("setMedia", stream).jPlayer("play");
      }
    },
    swfPath: "../js",
    supplied: "mp3",
    preload: "none",
    wmode: "mobile",
    keyEnabled: true
    
  });


   $("#jplayer_inspector_1").jPlayerInspector({jPlayer:$("#jquery_jplayer_1")});
    $("#jplayer_inspector_2").jPlayerInspector({jPlayer:$("#jquery_jplayer_2")});
    $("#jplayer_inspector_3").jPlayerInspector({jPlayer:$("#jquery_jplayer_3")});
    $("#jplayer_inspector").jPlayerInspector({jPlayer:$("#jquery_jplayer_4")});
   
});


