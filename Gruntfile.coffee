module.exports = (grunt) ->

  grunt.initConfig

    jade:
      all:
        expand: true
        flatten: true
        src: ['src/*.jade']
        dest: 'public'
        ext: '.html'
      # options:
      #   pretty: true

    sass:
      all:
        expand: true
        flatten: true
        src: ['src/*.sass']
        dest: 'public'
        ext: '.css'

    autoprefixer:
      all:
        expand: true
        flatten: true
        src: ['public/*.css']
        dest: 'public'
        ext: '.css'

    coffee:
      all:
        expand: true
        flatten: true
        src: ['src/*.coffee']
        dest: 'public'
        ext: '.js'

    watch:
      html:
        files: ['src/*.jade']
        tasks: ['jade']
      sass:
        files: ['src/*.sass']
        tasks: ['styles']
      coffee:
        files: ['src/*.coffee']
        tasks: ['coffee']
      options:
        livereload: true

    connect:
      server:
        options:
          base: 'public'
          hostname: '*'

  grunt.loadNpmTasks('grunt-contrib-jade')
  grunt.loadNpmTasks('grunt-contrib-sass')
  grunt.loadNpmTasks('grunt-autoprefixer')
  grunt.loadNpmTasks('grunt-contrib-coffee')
  grunt.loadNpmTasks('grunt-contrib-watch')
  grunt.loadNpmTasks('grunt-contrib-connect')
  grunt.registerTask('styles', ['sass', 'autoprefixer'])
  grunt.registerTask('default', ['connect', 'jade', 'styles', 'coffee', 'watch'])
