Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CBB4653E10
	for <lists.bridge@lfdr.de>; Thu, 22 Dec 2022 11:12:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B3E4060AE7;
	Thu, 22 Dec 2022 10:12:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B3E4060AE7
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=XiS53svt
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id znx99lygbQnM; Thu, 22 Dec 2022 10:12:44 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id E8DA760B2F;
	Thu, 22 Dec 2022 10:12:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E8DA760B2F
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id ACCB1C0084;
	Thu, 22 Dec 2022 10:12:42 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4382EC0070
 for <bridge@lists.linux-foundation.org>; Wed, 21 Dec 2022 18:48:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 23400418A1
 for <bridge@lists.linux-foundation.org>; Wed, 21 Dec 2022 18:48:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23400418A1
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=XiS53svt
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 9CL1gKqoQX_T for <bridge@lists.linux-foundation.org>;
 Wed, 21 Dec 2022 18:48:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0094641730
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0094641730
 for <bridge@lists.linux-foundation.org>; Wed, 21 Dec 2022 18:48:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id E71FD618E5;
 Wed, 21 Dec 2022 18:47:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 0F6C4C433EF;
 Wed, 21 Dec 2022 18:47:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1671648479;
 bh=hTuIjHBHd+Tec1DAOqqIPFW5jFXlpQ7ZWnftXs2hg6Q=;
 h=From:To:Cc:Subject:References:Date:In-Reply-To:From;
 b=XiS53svtnGlZKUpJLWpjIb00pvlTavkGyE/yhXeS7hKFYS8V/5Xav/+mlpRGezW6h
 BljUFnHKQWw/igsJKn42+z68Zwy3Z5sPZrjhFME/Kwqkbwjx7njFSsJY/zjJWCYIs2
 hg7VB/Upxxl01DViL7TGCOLjNQW9ZDg1YFt1aai4iFOc2yVu8ujua8wy7VEyZXvui4
 /1bJ/zTi5VZkqa0c9me5b9nyIRR+8AGM7a6aXGScjL7jgysNOOGh6mrX4vs3UGAGXF
 1s0aX5L7Ze9A8zWY2oezGwBJF7QaIiwiLIJLyqjhe4qpPeepExO7oc4XqzOCONcDBc
 /pYLvZHxEpyuQ==
From: Kalle Valo <kvalo@kernel.org>
To: Steven Rostedt <rostedt@goodmis.org>
References: <20221220134519.3dd1318b@gandalf.local.home>
Date: Wed, 21 Dec 2022 20:47:50 +0200
In-Reply-To: <20221220134519.3dd1318b@gandalf.local.home> (Steven Rostedt's
 message of "Tue, 20 Dec 2022 13:45:19 -0500")
Message-ID: <87mt7gk2zt.fsf@kernel.org>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/26.1 (gnu/linux)
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Thu, 22 Dec 2022 10:12:40 +0000
Cc: alsa-devel@alsa-project.org, linux-staging@lists.linux.dev,
 linux-sh@vger.kernel.org, dri-devel@lists.freedesktop.org,
 linux-leds@vger.kernel.org, drbd-dev@lists.linbit.com,
 linux-nilfs@vger.kernel.org, linux-scsi@vger.kernel.org,
 linux-atm-general@lists.sourceforge.net, lvs-devel@vger.kernel.org,
 linux-acpi@vger.kernel.org, SHA-cyfmac-dev-list@infineon.com,
 coreteam@netfilter.org, intel-wired-lan@lists.osuosl.org,
 linux-input@vger.kernel.org, tipc-discussion@lists.sourceforge.net,
 linux-ext4@vger.kernel.org, Guenter Roeck <linux@roeck-us.net>,
 linux-media@vger.kernel.org, bridge@lists.linux-foundation.org,
 intel-gfx@lists.freedesktop.org, linux-nfs@vger.kernel.org,
 linux-block@vger.kernel.org, cgroups@vger.kernel.org,
 Thomas Gleixner <tglx@linutronix.de>,
 Anna-Maria Gleixner <anna-maria@linutronix.de>,
 brcm80211-dev-list.pdl@broadcom.com, Stephen Boyd <sboyd@kernel.org>,
 netdev@vger.kernel.org, linux-usb@vger.kernel.org,
 linux-wireless@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
 Julia Lawall <Julia.Lawall@inria.fr>, linux-bluetooth@vger.kernel.org,
 netfilter-devel@vger.kernel.org, Andrew Morton <akpm@linux-foundation.org>,
 Linus Torvalds <torvalds@linux-foundation.org>
Subject: Re: [Bridge] [PATCH] treewide: Convert del_timer*() to
	timer_shutdown*()
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

Steven Rostedt <rostedt@goodmis.org> writes:

> [
>   Linus,
>
>     I ran the script against your latest master branch:
>     commit b6bb9676f2165d518b35ba3bea5f1fcfc0d969bf
>
>     As the timer_shutdown*() code is now in your tree, I figured
>     we can start doing the conversions. At least add the trivial ones
>     now as Thomas suggested that this gets applied at the end of the
>     merge window, to avoid conflicts with linux-next during the
>     development cycle. I can wait to Friday to run it again, and
>     resubmit.
>
>     What is the best way to handle this?
> ]
>
> From: "Steven Rostedt (Google)" <rostedt@goodmis.org>
>
> Due to several bugs caused by timers being re-armed after they are
> shutdown and just before they are freed, a new state of timers was added
> called "shutdown". After a timer is set to this state, then it can no
> longer be re-armed.
>
> The following script was run to find all the trivial locations where
> del_timer() or del_timer_sync() is called in the same function that the
> object holding the timer is freed. It also ignores any locations where the
> timer->function is modified between the del_timer*() and the free(), as
> that is not considered a "trivial" case.
>
> This was created by using a coccinelle script and the following commands:
>
>  $ cat timer.cocci
> @@
> expression ptr, slab;
> identifier timer, rfield;
> @@
> (
> -       del_timer(&ptr->timer);
> +       timer_shutdown(&ptr->timer);
> |
> -       del_timer_sync(&ptr->timer);
> +       timer_shutdown_sync(&ptr->timer);
> )
>   ... when strict
>       when != ptr->timer
> (
>         kfree_rcu(ptr, rfield);
> |
>         kmem_cache_free(slab, ptr);
> |
>         kfree(ptr);
> )
>
>  $ spatch timer.cocci . > /tmp/t.patch
>  $ patch -p1 < /tmp/t.patch
>
> Link: https://lore.kernel.org/lkml/20221123201306.823305113@linutronix.de/
>
> Signed-off-by: Steven Rostedt (Google) <rostedt@goodmis.org>

For wireless:

>  .../broadcom/brcm80211/brcmfmac/btcoex.c         |  2 +-
>  drivers/net/wireless/intel/iwlwifi/iwl-dbg-tlv.c |  2 +-
>  drivers/net/wireless/intel/iwlwifi/mvm/sta.c     |  2 +-
>  drivers/net/wireless/intersil/hostap/hostap_ap.c |  2 +-
>  drivers/net/wireless/marvell/mwifiex/main.c      |  2 +-
>  drivers/net/wireless/microchip/wilc1000/hif.c    |  6 +++---

Acked-by: Kalle Valo <kvalo@kernel.org>

-- 
https://patchwork.kernel.org/project/linux-wireless/list/

https://wireless.wiki.kernel.org/en/developers/documentation/submittingpatches
