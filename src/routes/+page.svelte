<script lang="ts">
	import Window from '$lib/components/window.svelte';
	import { info, skills } from '$lib/skills';
	import { asset } from '$app/paths';

	let selected_window: HTMLDivElement | null = null;

	const handleMousedown = (event: MouseEvent) => {
		const draggedElem = document.elementsFromPoint(event.x, event.y).find((elem) => {
			return elem.classList.contains('jsland-grab-handle');
		});

		if (!draggedElem) return;

		// @ts-expect-error a drag-handle will always have a parent element
		selected_window = draggedElem.parentNode;
	};

	const handleMouseup = () => {
		selected_window = null;
	};

	const handleMousemove = (event: MouseEvent) => {
		if (!selected_window) return;

		let top = Number(selected_window.style.top.split('px')[0]);
		top += event.movementY;

		let left = Number(selected_window.style.left.split('px')[0]);
		left += event.movementX;

		selected_window.style.top = `${top}px`;
		selected_window.style.left = `${left}px`;
	};
</script>

<Window title="lyna@lyn.pet">
	<div class="mb-2 flex max-w-md flex-col gap-3">
		<span class="font-mono"><pre>  ~ whoami</pre></span>
		<div class="flex flex-row gap-6">
			<img src={asset('/images/pfp.png')} class="aspect-square h-48 w-48 bg-red-200" alt="" />
			<pre class="font-mono whitespace-pre-wrap">{info}</pre>
		</div>
		<div>
			<pre class="font-mono">{skills}</pre>
		</div>
	</div>
</Window>

<Window>
	<div class="p-10">
		<span class="text-5xl">🚧 - WORK IN PROGRESS - 🚧</span>
	</div>
</Window>

<svelte:window
	onmousedown={handleMousedown}
	onmousemove={handleMousemove}
	onmouseup={handleMouseup}
/>
