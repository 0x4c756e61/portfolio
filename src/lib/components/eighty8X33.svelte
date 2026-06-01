<script lang="ts">
	const {
		src,
		alt,
		title,
		href,
		rel = 'external'
	}: { src: string; alt: string; title?: string; href?: string; rel?: string } = $props();
</script>

<a {href} {rel}><img {src} width="88" height="31" {alt} {title} class="render" /></a>

<style>
	img {
		image-rendering: pixelated;
		aspect-ratio: 88/31;
	}
</style>
