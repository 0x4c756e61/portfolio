<script lang="ts">
	import type { Snippet, Component } from 'svelte';
	import { Minus, Square, X, type LucideProps } from '@lucide/svelte';
	import { scale } from 'svelte/transition';

	const {
		title = 'Terminal',
		class: className,
		children
	}: { title?: string; class?: string; children: Snippet } = $props();
	type LucideIcon = Component<LucideProps>;
</script>

{#snippet decorationButton(icon: LucideIcon, disabled?: boolean)}
	{@const Icon = icon}
	<button
		aria-label="decoration button"
		class="transition-opacity hover:opacity-75 disabled:opacity-30!"
		{disabled}
	>
		<Icon size="10"></Icon>
	</button>
{/snippet}

<div
	class="h-fit flex-col rounded-sm border border-white/15 bg-transparent font-sans text-xl text-white shadow-2xl hover:border-red-400/55"
	transition:scale
>
	<!-- Decorations -->
	<div class="flex flex-row justify-start gap-3 p-3 align-middle select-none">
		<div class="flex flex-row items-center gap-2">
			{@render decorationButton(X)}
			{@render decorationButton(Square)}
			{@render decorationButton(Minus)}
		</div>
		<div class="my-auto h-5 w-px rounded-full bg-white opacity-15"></div>
		<span class="font-tiny-term text-sm font-light text-white opacity-90">{title}</span>
	</div>
	<!-- content -->
	<div class="px-3 {className}">
		{@render children?.()}
	</div>
</div>
