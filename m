Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 84CFE61E9B4
	for <lists.bridge@lfdr.de>; Mon,  7 Nov 2022 04:33:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6C2D081435;
	Mon,  7 Nov 2022 03:33:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6C2D081435
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DWWt6ilSeZli; Mon,  7 Nov 2022 03:33:05 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id ADBE281433;
	Mon,  7 Nov 2022 03:33:04 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org ADBE281433
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 3D94EC007B;
	Mon,  7 Nov 2022 03:33:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D274AC002D
 for <bridge@lists.linux-foundation.org>; Mon,  7 Nov 2022 03:33:02 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A32A481433
 for <bridge@lists.linux-foundation.org>; Mon,  7 Nov 2022 03:33:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A32A481433
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UJz_xqKlyOoC for <bridge@lists.linux-foundation.org>;
 Mon,  7 Nov 2022 03:33:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5FC018141A
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5FC018141A
 for <bridge@lists.linux-foundation.org>; Mon,  7 Nov 2022 03:33:01 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 626B960E94;
 Mon,  7 Nov 2022 03:33:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 780BFC433C1;
 Mon,  7 Nov 2022 03:32:58 +0000 (UTC)
Date: Sun, 6 Nov 2022 22:32:56 -0500
From: Steven Rostedt <rostedt@goodmis.org>
To: Linus Torvalds <torvalds@linux-foundation.org>
Message-ID: <20221106223256.4bbdb018@rorschach.local.home>
X-Mailer: Claws Mail 3.17.8 (GTK+ 2.24.33; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-afs@lists.infradead.org, linux-leds@vger.kernel.org,
 drbd-dev@lists.linbit.com, linux-nilfs@vger.kernel.org,
 linux-scsi@vger.kernel.org, linux-atm-general@lists.sourceforge.net,
 lvs-devel@vger.kernel.org, linux-acpi@vger.kernel.org, coreteam@netfilter.org,
 intel-wired-lan@lists.osuosl.org, linux-input@vger.kernel.org,
 tipc-discussion@lists.sourceforge.net, linux-ext4@vger.kernel.org,
 Guenter Roeck <linux@roeck-us.net>, linux-media@vger.kernel.org,
 bridge@lists.linux-foundation.org, intel-gfx@lists.freedesktop.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Gleixner <anna-maria@linutronix.de>, linux-nfs@vger.kernel.org,
 Stephen Boyd <sboyd@kernel.org>, netdev@vger.kernel.org,
 linux-usb@vger.kernel.org, linux-wireless@vger.kernel.org,
 linux-kernel@vger.kernel.org, Julia Lawall <Julia.Lawall@inria.fr>,
 linux-bluetooth@vger.kernel.org, netfilter-devel@vger.kernel.org,
 Andrew Morton <akpm@linux-foundation.org>
Subject: [Bridge] [GIT PULL] treewide: timers: Use timer_shutdown*() before
 freeing timers
X-BeenThere: bridge@lists.linux-foundation.org
X-Mailman-Version: 2.1.15
Precedence: list
List-Id: Linux Ethernet Bridging <bridge.lists.linux-foundation.org>
List-Unsubscribe: <https://lists.linuxfoundation.org/mailman/options/bridge>, 
 <mailto:bridge-request@lists.linux-foundation.org?subject=unsubscribe>
List-Archive: <http://lists.linuxfoundation.org/pipermail/bridge/>
List-Post: <mailto:bridge@lists.linux-foundation.org>
List-Help: <mailto:bridge-request@lists.linux-foundation.org?subject=help>
List-Subscribe: <https://lists.linuxfoundation.org/mailman/listinfo/bridge>,
 <mailto:bridge-request@lists.linux-foundation.org?subject=subscribe>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>



Linus,

As discussed here:

  https://lore.kernel.org/all/20221106212427.739928660@goodmis.org/

Add a "shutdown" state for timers. This is performed by the new
timer_shutdown_sync() and timer_shutdown() function calls. When this is
called on a timer, it will no longer be able to be re-armed. This should
be called before a timer is freed to prevent it from being re-armed after
being removed from the timer queue and then causing a crash in the timer
code when the timer triggers.

This required renaming some functions that were using the name
timer_shutdown() statically to something more appropriate.

Then a coccinelle script was executed on the entire kernel tree to find
the trivial locations that remove the timer and then frees the object that
the timer exists on.

These changes are not enough to solve all the locations where timers may
be of an issue. But by adding the shutdown infrastructure and the obvious
cases, the more complex cases can be added after they have been reviewed
more closely.


Please pull the following tree, which can be found at:


  git://git.kernel.org/pub/scm/linux/kernel/git/rostedt/linux-trace.git
add-timer-shutdown

Tag SHA1: 7685328352dfd2908e23048f563e328dbd3526e9
Head SHA1: 870556da63870e01ade9bb8418ac5a21862f2f10


Steven Rostedt (Google) (5):
      ARM: spear: Do not use timer namespace for timer_shutdown() function
      clocksource/drivers/arm_arch_timer: Do not use timer namespace for timer_shutdown() function
      clocksource/drivers/sp804: Do not use timer namespace for timer_shutdown() function
      timers: Add timer_shutdown_sync() and timer_shutdown() to be called before freeing timers
      treewide: Convert del_timer*() to timer_shutdown*()

----
 .../RCU/Design/Requirements/Requirements.rst       |  2 +-
 Documentation/core-api/local_ops.rst               |  2 +-
 Documentation/kernel-hacking/locking.rst           |  5 ++
 arch/arm/mach-spear/time.c                         |  8 +--
 arch/sh/drivers/push-switch.c                      |  2 +-
 block/blk-iocost.c                                 |  2 +-
 block/blk-iolatency.c                              |  2 +-
 block/kyber-iosched.c                              |  2 +-
 drivers/acpi/apei/ghes.c                           |  2 +-
 drivers/atm/idt77252.c                             |  6 +-
 drivers/block/drbd/drbd_main.c                     |  2 +-
 drivers/block/loop.c                               |  2 +-
 drivers/bluetooth/hci_bcsp.c                       |  2 +-
 drivers/bluetooth/hci_qca.c                        |  4 +-
 drivers/clocksource/arm_arch_timer.c               | 12 ++--
 drivers/clocksource/timer-sp804.c                  |  6 +-
 drivers/gpu/drm/i915/i915_sw_fence.c               |  2 +-
 drivers/hid/hid-wiimote-core.c                     |  2 +-
 drivers/input/keyboard/locomokbd.c                 |  2 +-
 drivers/input/keyboard/omap-keypad.c               |  2 +-
 drivers/input/mouse/alps.c                         |  2 +-
 drivers/isdn/mISDN/l1oip_core.c                    |  4 +-
 drivers/isdn/mISDN/timerdev.c                      |  4 +-
 drivers/leds/trigger/ledtrig-activity.c            |  2 +-
 drivers/leds/trigger/ledtrig-heartbeat.c           |  2 +-
 drivers/leds/trigger/ledtrig-pattern.c             |  2 +-
 drivers/leds/trigger/ledtrig-transient.c           |  2 +-
 drivers/media/pci/ivtv/ivtv-driver.c               |  2 +-
 drivers/media/usb/pvrusb2/pvrusb2-hdw.c            | 16 +++---
 drivers/media/usb/s2255/s2255drv.c                 |  4 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c        |  6 +-
 drivers/net/ethernet/marvell/sky2.c                |  2 +-
 drivers/net/ethernet/sun/sunvnet.c                 |  2 +-
 drivers/net/usb/sierra_net.c                       |  2 +-
 .../wireless/broadcom/brcm80211/brcmfmac/btcoex.c  |  2 +-
 drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c   |  2 +-
 drivers/net/wireless/intel/iwlwifi/mvm/sta.c       |  2 +-
 drivers/net/wireless/intersil/hostap/hostap_ap.c   |  2 +-
 drivers/net/wireless/marvell/mwifiex/main.c        |  2 +-
 drivers/net/wireless/microchip/wilc1000/hif.c      |  6 +-
 drivers/nfc/pn533/pn533.c                          |  2 +-
 drivers/nfc/pn533/uart.c                           |  2 +-
 drivers/pcmcia/bcm63xx_pcmcia.c                    |  2 +-
 drivers/pcmcia/electra_cf.c                        |  2 +-
 drivers/pcmcia/omap_cf.c                           |  2 +-
 drivers/pcmcia/pd6729.c                            |  4 +-
 drivers/pcmcia/yenta_socket.c                      |  4 +-
 drivers/scsi/qla2xxx/qla_edif.c                    |  4 +-
 drivers/staging/media/atomisp/i2c/atomisp-lm3554.c |  2 +-
 drivers/tty/n_gsm.c                                |  2 +-
 drivers/tty/sysrq.c                                |  2 +-
 drivers/usb/gadget/udc/m66592-udc.c                |  2 +-
 drivers/usb/serial/garmin_gps.c                    |  2 +-
 drivers/usb/serial/mos7840.c                       |  4 +-
 fs/ext4/super.c                                    |  2 +-
 fs/nilfs2/segment.c                                |  2 +-
 include/linux/timer.h                              | 62 +++++++++++++++++++--
 kernel/time/timer.c                                | 64 ++++++++++++----------
 net/802/garp.c                                     |  2 +-
 net/802/mrp.c                                      |  4 +-
 net/bridge/br_multicast.c                          |  8 +--
 net/bridge/br_multicast_eht.c                      |  4 +-
 net/core/gen_estimator.c                           |  2 +-
 net/ipv4/ipmr.c                                    |  2 +-
 net/ipv6/ip6mr.c                                   |  2 +-
 net/mac80211/mesh_pathtbl.c                        |  2 +-
 net/netfilter/ipset/ip_set_list_set.c              |  2 +-
 net/netfilter/ipvs/ip_vs_lblc.c                    |  2 +-
 net/netfilter/ipvs/ip_vs_lblcr.c                   |  2 +-
 net/netfilter/xt_IDLETIMER.c                       |  4 +-
 net/netfilter/xt_LED.c                             |  2 +-
 net/rxrpc/conn_object.c                            |  2 +-
 net/sched/cls_flow.c                               |  2 +-
 net/sunrpc/svc.c                                   |  2 +-
 net/tipc/discover.c                                |  2 +-
 net/tipc/monitor.c                                 |  2 +-
 sound/i2c/other/ak4117.c                           |  2 +-
 sound/synth/emux/emux.c                            |  2 +-
 78 files changed, 207 insertions(+), 148 deletions(-)
---------------------------
