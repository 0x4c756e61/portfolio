<script lang="ts">
	import Window from '$lib/components/window.svelte';
	import { asset } from '$app/paths';
	import { Clock, GraduationCap, Heart, TriangleAlert, User } from '@lucide/svelte';
	import Git from '$lib/components/icons/git.svelte';
	import Matrix from '$lib/components/icons/matrix.svelte';
	import Eighty8X33 from '$lib/components/eighty8X33.svelte';
</script>

<div class="flex flex-col justify-center gap-3 md:flex-row">
	<div class="flex flex-col gap-2.5">
		<Window title="lyna@lyn.pet" class="mb-2 flex flex-col gap-3 font-term md:max-w-md">
			<div class="flex items-center gap-2">
				<Heart size="15" /><span>~ whoami</span>
			</div>
			<div class="flex flex-row gap-6">
				<img
					id="logo"
					src={asset('/images/pfp.png')}
					class="aspect-square h-40 w-40 bg-white"
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
					<span>&gt; Haii, I'm Lyna ! I make computers go beep!</span>
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
		<Window title="ls ~/Projects"></Window>
	</div>

	<div class="flex flex-col gap-3.5">
		<Window title="cat /etc/motd" class="flex max-w-2xl flex-col gap-5 p-5">
			<span class="bg-white p-3.5 text-center font-term text-5xl text-black"
				>CONSTANTLY EVOLVING</span
			>

			<span class="font-tiny-term text-sm">
				Haiii !! Welcome to my little corner of the interweb ! This webbed site is still under
				construction, please be patient, am writing this with my bare paws :neocat: In this little
				space of mine, you'll find my projects, some structured posts of mine that aren't available
				over on my socials and other little things here and there.

				<br />
				<br />
				This website lives with me, as such it'll always be evolving &lt;3
				<br />
				<br />

				This piece of software is best viewed on a 16:9 aspect ratio, currently responsiveness is a
				2nd thought at the very best, as this website is very WIP.

				<br /><br />
				// [TODO]
				<pre class="whitespace-pre-wrap">
- Make this thing responsive
- Describe what's meant to be here
- Find more things to add
- Rewrite this without ewscript
- Add 88x31
- Make my own 88x31
- Make a white theme, white themes are good !
- Make the music widget work
				</pre>
				&gt; You should write that you're cute, and tiny, cuz you are<br />
				&gt; - Luna my bestie
			</span>
		</Window>
	</div>

	<div class="flex flex-col gap-2.5">
		<Window title="~/Music" class="flex justify-center gap-2 p-5">
			<TriangleAlert /> <span class="text-center text-sm italic">currently unavailable</span>
		</Window>

		<Window title="Inspiration.x86_64" class="flex gap-0.5 p-3">
			<Eighty8X33
				src="https://lunya.moe/img/88x31/entities/lunanana.apng"
				alt="Luna's 88x31, it says lunananana on a multitude of flags, mainly the trans and lesbian ones"
				title="She's the besterestest <3"
				href="https://lunya.moe/"
			/>

			<Eighty8X33
				src="https://ghostk.id/i/88x31.gif"
				alt="https://ghostk.id button"
				href="https://ghostk.id/"
			/>

			<Eighty8X33
				src="https://emeowly.gay/_images/assets/emeowly.gif"
				alt="https://emeowly.gay 88x31"
				href="https://emeowly.gay/"
			/>
		</Window>
		<Window title="ls ~/friends" class="flex gap-0.5 p-3">
			<Eighty8X33
				src="https://lunya.moe/img/88x31/entities/lunanana.apng"
				alt="Luna's 88x31, it says lunananana on a multitude of flags, mainly the trans and lesbian ones"
				title="She's the besterestest <3"
				href="https://lunya.moe/"
			/>

			<Eighty8X33
				href="https://nyatalie.fyi"
				src="https://nyatalie.fyi/nat88x31.png"
				alt="Natalie's 88x31, on the left is a girl with a white skin and straight red hair. Next to her is a white text saying 'nat'. The entire thing is on a stripped background, with 3 slanted stripes, blue, pink and purple."
				title="Cute goober :3"
			/>

			<Eighty8X33
				href="https://sn0w.re"
				src="https://sn0w.re/assets/img/buttons/me.gif"
				alt="snow's 88x31, it's a white text saying snow.re on a black, blue and purple background"
				title="[Øl]Kofe"
			/>
		</Window>
		<Window title="88x31" class="flex max-w-96 flex-wrap gap-0.5 p-5">
			<Eighty8X33 src="images/88x31/anarchy-now.gif" alt="Anarchy now !" title="Anarchy now !" />
			<Eighty8X33
				src="images/88x31/chrome-evil.gif"
				alt="We stay Zen here :3"
				title="We stay Zen here :3"
			/>
			<Eighty8X33 src="images/88x31/federate-now.jpg" alt="Federate now !" title="Federate now !" />
			<Eighty8X33
				src="images/88x31/gnu-linux.gif"
				alt="I use systemd+arch+nix btw :3"
				title="I use systemd+arch+nix btw :3"
			/>
			<Eighty8X33
				src="images/88x31/google_stand.gif"
				alt="Screw you google"
				title="Screw you google"
			/>
			<Eighty8X33
				src="images/88x31/hug-all-hajs-glint.png"
				alt="Shork fren :3"
				title="Shork fren :3"
			/>
			<Eighty8X33
				src="images/88x31/powered-by-estrogen.gif"
				alt="All the cute girls take estrogen :3"
				title="All the cute girls take estrogen :3"
			/>
			<Eighty8X33
				src="images/88x31/programming-socks.png"
				alt="Put your programming socks on !"
				title="Put your programming socks on !"
			/>
			<Eighty8X33
				src="images/88x31/she-her.gif"
				alt="My pronouns are she/her"
				title="My pronouns are she/her"
			/>
			<Eighty8X33
				src="images/88x31/transrights-now.gif"
				alt="We're beings with feelings too, like you"
				title="We're beings with feelings too, like you"
			/>
			<Eighty8X33
				src="images/88x31/nap.gif"
				alt="Am half cat, half human, genetically and soon™ bio modded"
				title="Am half cat, half human, genetically and soon™ bio modded"
			/>
		</Window>
	</div>
</div>
