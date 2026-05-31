<script lang="ts">
	import Window from '$lib/components/window.svelte';
	import { asset } from '$app/paths';
	import { Clock, GraduationCap, Heart, TriangleAlert, User } from '@lucide/svelte';
	import Svelte from '$lib/components/icons/svelte.svelte';
	import Git from '$lib/components/icons/git.svelte';
	import Matrix from '$lib/components/icons/matrix.svelte';
</script>

<div class="my-9">
	<span class="font-term text-white/80">$ pwd</span>
	<span id="cmd_result" class="block font-term! text-5xl text-white">Lyna's webbed site</span>
</div>

<div class="flex flex-row justify-center gap-3">
	<div class="flex flex-col gap-2.5">
		<Window title="lyna@lyn.pet" class="mb-2 flex max-w-md flex-col gap-3 font-term">
			<div class="flex items-center gap-2">
				<Heart size="15" /><span>~ whoami</span>
			</div>
			<div class="flex flex-row gap-6">
				<img
					id="logo"
					src={asset('/images/pfp.png')}
					class="aspect-square h-40 w-40 bg-red-200"
					alt=""
				/>
				<div class="font-term">
					<div class="flex items-center gap-2"><User size="16" /> <span>Lyna</span></div>
					<div class="flex items-center gap-2">
						<Clock size="16" />
						{new Date().getYear() - new Date('2 april 2005').getYear()} years old
					</div>

					<div class="flex items-center gap-2"><GraduationCap size="16" /> Student</div>
					<br />
					&gt; Haii, I'm Lyna ! I make computers go beep!
				</div>
			</div>
		</Window>
		<Window title="ls /sys/class/links" class="flex justify-evenly p-5">
			<a
				href="https://github.com/0x4c756e61"
				class="flex items-center gap-2 fill-white transition-opacity hover:opacity-55"
			>
				<div class="w-6"><Git /></div>
				<span class="flex fill-white">0x4c756e61</span>
			</a>
			<a
				href="https://matrix.to/#/@lunalina:catgirl.cloud"
				class="flex items-center gap-2 fill-white transition-opacity hover:opacity-55"
			>
				<div class="w-6"><Matrix /></div>
				<span class="flex fill-white">@lunalina:catgirl.cloud</span>
			</a>
		</Window>
		<Window title="cat /proc/skills" class="fill-white">
			<Svelte />
		</Window>
	</div>

	<div>
		<Window title="cat /etc/motd" class="flex w-2xl flex-col p-5">
			<span class="bg-white p-3.5 text-center font-term text-5xl text-black"
				>CONSTANTLY EVOLVING</span
			>

			meow
		</Window>
	</div>

	<div class="flex flex-col gap-2.5">
		<Window title="~/Music" class="flex justify-center gap-2 p-5">
			<TriangleAlert /> <span class="text-center text-sm italic">currently unavailable</span>
		</Window>
		<Window title="ls ~/Projects"></Window>
		<Window title="Inspiration.x86_64" class="flex justify-evenly gap-0.5">
			<a href="https://ghostk.id/"
				><img
					src="https://ghostk.id/i/88x31.gif"
					width="88"
					height="31"
					alt="https://ghostk.id button"
				/></a
			>
			<a href="https://emeowly.gay/">
				<img
					width="88"
					height="31"
					src="https://emeowly.gay/_images/assets/emeowly.gif"
					alt="https://emeowly.gay 88x31"
				/>
			</a>
		</Window>
		<Window title="ls ~/friends" class="flex justify-evenly gap-0.5 p-3">
			<a href="https://lunya.moe/"
				><img
					src="https://lunya.moe/img/88x31/entities/lunanana.apng"
					width="88"
					height="31"
					alt="Luna's 88x31, it says lunananana on a multitude of flags, mainly the trans and lesbian ones"
					title="She's the besterestest <3"
				/></a
			>
			<a href="https://nyatalie.fyi">
				<img
					width="88"
					height="31"
					src="https://nyatalie.fyi/nat88x31.png"
					alt="Natalie's 88x31, on the left is a girl with a white skin and straight red hair. Next to her is a white text saying 'nat'. The entire thing is on a stripped background, with 3 slanted stripes, blue, pink and purple."
					title="Cute goober :3"
				/>
			</a>
		</Window>
	</div>
</div>
