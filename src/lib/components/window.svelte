<script lang="ts">
	import type { Snippet } from 'svelte';
	import { scale } from 'svelte/transition';

	const { title = 'Terminal', children }: { title?: string; children: Snippet } = $props();
</script>

{#snippet decorationButton(color: string, disabled?: boolean)}
	<button
		aria-label="close button"
		class="h-4 w-4 rounded-full {color} transition-opacity hover:opacity-75 disabled:opacity-30!"
		{disabled}
	></button>
{/snippet}

<div
	class="absolute h-fit flex-col rounded-2xl border border-white/15 bg-gray-900 font-sans text-xl text-white shadow-2xl"
	transition:scale
>
	<!-- Decorations -->
	<div class="jsland-grab-handle flex flex-row justify-start gap-3 p-3 align-middle select-none">
		<div class="flex flex-row items-center gap-2">
			{@render decorationButton('bg-red-500', true)}
			{@render decorationButton('bg-orange-500')}
			{@render decorationButton('bg-green-500')}
		</div>
		<div class="my-auto h-5 w-px rounded-full bg-white opacity-15"></div>
		<span class="text-white opacity-90">{title}</span>
	</div>
	<!-- content -->
	<div class="px-3">
		{@render children?.()}
	</div>
</div>
