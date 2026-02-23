<script lang="ts">
	import Window from '$lib/components/window.svelte';
	import { Xterm } from '@battlefieldduck/xterm-svelte';
	import type {
		Terminal,
		ITerminalOptions,
		ITerminalInitOnlyOptions
	} from '@battlefieldduck/xterm-svelte';

	let terminal = $state<Terminal>();
	let input_buffer = '';
	let history: string[] = [];
	let history_pointer = 1;

	const options: ITerminalOptions & ITerminalInitOnlyOptions = {
		allowTransparency: true,
		cursorStyle: 'bar',
		disableStdin: true,
		fontFamily: 'Maple Mono NF',
		fontSize: 20,
		theme: {
			background: '#101828'
		}
	};

	async function prompt() {
		terminal?.write('  ~ ');
	}

	async function onLoad() {
		terminal?.write(
			"Simple terminal and shell, all it does is evaluate the inputed javascript,you can do some neat things, like printing the history with 'history', everything in the scope of src/lib/components/terminal.svelte can be accessed\n"
		);

		terminal?.write('\n');
		terminal?.write('\x1b[2K'); // Clear the line
		terminal?.write('\x1b[0G'); // Move the char back at column 0
		await prompt();
	}

	function onData(data: string) {
		console.log('onData()', data);
	}

	function onKey(data: { key: string; domEvent: KeyboardEvent }) {
		console.debug(data.domEvent.key);
		switch (data.domEvent.key) {
			case 'Backspace': {
				if (input_buffer.length <= 0) break;
				// clear the input on ctrl-backspace
				if (data.domEvent.ctrlKey) {
					// print as manny backspace sequences as their are characters in the input buffer
					for (let i = 0; i < input_buffer.length - 1; i++) terminal?.write('\x1B[1D \x1B[1D');
					input_buffer = '';
				}

				input_buffer = input_buffer.slice(0, input_buffer.length - 1);
				terminal?.write('\x1B[1D \x1B[1D');

				// reset history back to the last command if the user removes all input
				if (input_buffer.length <= 0) {
					history_pointer = history.length;
				}
				break;
			}

			case 'Delete': {
				break;
			}

			case 'Enter': {
				terminal?.write('\n');
				terminal?.write('\x1b[2K'); // Clear the line
				terminal?.write('\x1b[0G'); // Move the char back at column 0
				console.debug('Cli: ' + input_buffer);

				if (input_buffer) {
					try {
						history.push(input_buffer);
						history_pointer = history.length;
						let eval_res = eval(input_buffer);
						terminal?.write(`${eval_res}\n`);
					} catch {
						terminal?.write('Error');
					} finally {
						input_buffer = '';
						terminal?.write('\x1b[0G');
					}
				}

				prompt();

				break;
			}

			case 'ArrowRight':
			case 'ArrowLeft': {
				break;
			}

			case 'ArrowDown': {
				if (history.length <= 0) return;
				history_pointer = Math.min(history_pointer + 1, history.length);
				input_buffer = history.at(history_pointer) || '';

				// write the new prompt with value
				terminal?.write('\x1b[2K'); // Clear the line
				terminal?.write('\x1b[0G'); // Move the char back at column 0
				prompt();

				terminal?.write(history[history_pointer]);

				break;
			}

			case 'ArrowUp': {
				if (history.length <= 0) return;
				history_pointer = Math.max(history_pointer - 1, 0);
				input_buffer = history.at(history_pointer) || '';

				// write the new prompt with value
				terminal?.write('\x1b[2K'); // Clear the line
				terminal?.write('\x1b[0G'); // Move the char back at column 0
				prompt();

				terminal?.write(history[history_pointer]);

				break;
			}

			default: {
				// ignore non printable keys that were not handled earlier
				// thanks https://stackoverflow.com/questions/4194163/detect-printable-keys <3
				if (data.key.length !== 1) return;

				input_buffer += data.key[0];
				terminal?.write(data.key);
				break;
			}
		}
	}
</script>

<Window>
	<div class="flex-1">
		<Xterm bind:terminal {options} {onLoad} {onData} {onKey} />
	</div>
</Window>
