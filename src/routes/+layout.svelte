<script lang="ts">
	import './layout.css';
	import favicon from '$lib/assets/favicon.png';

	let { children } = $props();
</script>

<svelte:head><link rel="icon" href={favicon} /></svelte:head>

<!-- header -->
<div class="flex flex-col items-center">
	<div class="my-9">
		<span class="font-term text-white/80">$ pwd</span>
		<span id="cmd_result" class="block font-term! text-5xl text-white">Lyna's webbed site</span>
	</div>
</div>

<!-- content -->
<div class="px-3">
	{@render children()}
</div>

<!-- footer -->
<div class="my-3.5 flex flex-col items-center md:mb-0">
	<span class="font-tiny-term text-white">Copyleft 2025-now(), Lyna Stral</span>
</div>
