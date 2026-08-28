# Boot Kernel Command Line

This directory contains the portable kernel command line used by `/etc/kernel/cmdline`.

## Installation

Copy the command line to the system:

```fish
sudo cp boot/cmdline /etc/kernel/cmdline
```

If the system uses a different root filesystem or filesystem layout, check `/etc/kernel/cmdline` before replacing it. The portable configuration assumes a Btrfs root with an `@` subvolume.

## CPU-specific parameters

The original configuration also used CPU-isolation and IRQ-affinity parameters:

```text
isolcpus=managed_irq,2-11
nohz_full=2-11
rcu_nocbs=2-11
irqaffinity=0,1
```

These parameters are hardware-specific and should NOT be copied blindly to another machine.

Check the target CPU topology first:

```fish
lscpu
```

Then adjust the CPU ranges to match the target system. These parameters are intended for systems where specific CPUs are deliberately isolated from general kernel scheduling and IRQ handling.

After changing `/etc/kernel/cmdline`, regenerate the boot entries/initramfs as appropriate for the installed kernel/bootloader.
