<script lang="ts">
	import './layout.css';
	import favicon from '$lib/assets/favicon.png';

	let { children } = $props();
</script>

<svelte:head><link rel="icon" href={favicon} /></svelte:head>

<div class="flex w-full flex-col items-center bg-accent/80 p-5 text-xl text-foreground">
	<span class="mb-2.5 text-2xl"
		>Privacy in the EU is a <span class="text-background italic">LIE</span></span
	>
	<span
		>They want to scan your private messages and photos. Fight back ! <a
			href="https://fightchatcontrol.eu"
			class="text-blue-400 hover:underline">fightchatcontrol.eu</a
		>
	</span>
	<span>The EU is banning privacy preserving cryptocurrencies like monero !</span>
</div>

<!-- header -->
<div class="flex flex-col items-center">
	<div class="my-9">
		<span class="font-term text-foreground/80">$ pwd</span>
		<span id="cmd_result" class="block font-term! text-5xl text-foreground">Lyna's webbed site</span
		>
	</div>
</div>

<!-- content -->
<div class="px-3 text-foreground">
	{@render children()}
</div>

<!-- footer -->
<div class="my-3.5 flex flex-col items-center md:mb-0">
	<span class="font-tiny-term text-foreground">Copyleft 2025-now(), Lyna Stral</span>
</div>
