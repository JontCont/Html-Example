For prototyping or learning purposes, you can use the latest version with:

<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
For production, we recommend linking to a specific version number and build to avoid unexpected breakage from newer versions:

<script src="https://cdn.jsdelivr.net/npm/vue@2.6.11"></script>
If you are using native ES Modules, there is also an ES Modules compatible build:

<script type="module">
  import Vue from 'https://cdn.jsdelivr.net/npm/vue@2.6.11/dist/vue.esm.browser.js'
</script>

You can browse the source of the NPM package at cdn.jsdelivr.net/npm/vue.

Vue is also available on unpkg and cdnjs (cdnjs takes some time to sync so the latest release may not be available yet).

Make sure to read about the different builds of Vue and use the production
version in your published site, replacing vue.js with vue.min.js. This is a smaller build optimized for speed instead of development experience.