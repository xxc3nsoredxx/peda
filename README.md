peda
====

PEDA - Python Exploit Development Assistance for GDB

## Key Features:
* Enhance the display of gdb: colorize and display disassembly codes, registers, memory information during debugging.
* Add commands to support debugging and exploit development (for a full list of commands use `peda help`):
  * `aslr` -- Show/set ASLR setting of GDB
  * `checksec` -- Check for various security options of binary
  * `dumpargs` -- Display arguments passed to a function when stopped at a call instruction
  * `dumprop` -- Dump all ROP gadgets in specific memory range
  * `elfheader` -- Get headers information from debugged ELF file
  * `elfsymbol` -- Get non-debugging symbol information from an ELF file
  * `lookup` -- Search for all addresses/references to addresses which belong to a memory range
  * `patch` -- Patch memory start at an address with string/hexstring/int
  * `pattern` -- Generate, search, or write a cyclic pattern to memory
  * `procinfo` -- Display various info from /proc/pid/
  * `pshow` -- Show various PEDA options and other settings
  * `pset` -- Set various PEDA options and other settings
  * `readelf` -- Get headers information from an ELF file
  * `ropgadget` -- Get common ROP gadgets of binary or library
  * `ropsearch` -- Search for ROP gadgets in memory
  * `searchmem|find` -- Search for a pattern in memory; support regex search
  * `shellcode` -- Generate or download common shellcodes.
  * `skeleton` -- Generate python exploit code template
  * `vmmap` -- Get virtual mapping address ranges of section(s) in debugged process
  * `xormem` -- XOR a memory region with a key

## Installation
### Cloning the repo (traditional method)
```bash
git clone https://github.com/xxc3nsoredxx/peda ~/peda
echo "source ~/peda/peda.py" >> ~/.gdbinit
echo "DONE! debug your program with gdb and enjoy"
```
The only differences between this repo and upstream are related to this README.md, git tags, and the method of execution (if installed through Portage).
The `master` from upstream will always be merged unmodified into the `upstream-master` branch.

### Gentoo (unc3nsored overlay)
Before installing, enable the [unc3nsored overlay][overlay].
```bash
emerge -av sys-devel/gdb-peda
```
To debug a program with PEDA, run:
```
peda <gdb args> <program to debug>
```
Add any PEDA-specific `.gdbinit` lines into `~/.pedainit`

## Versioning
Version numbers are `<upstream>_pYYYYMMDD` based on the date of the latest upstream commit included in the tag (US/Central time zone).

## Screenshot
![start][start]

![pattern arg][pattern arg]

![patts][patts]


<!-- link refs -->
[overlay]: https://github.com/xxc3nsoredxx/unc3nsored
[start]: img/start.png
[pattern arg]: img/pattern_arg.png
[patts]: img/patts.png
