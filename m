Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F07BA785465
	for <lists.bridge@lfdr.de>; Wed, 23 Aug 2023 11:38:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6DA1E40860;
	Wed, 23 Aug 2023 09:38:55 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6DA1E40860
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=yahoo.com header.i=@yahoo.com header.a=rsa-sha256 header.s=s2048 header.b=KSXvdKHM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id T3OEniNbJvCz; Wed, 23 Aug 2023 09:38:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 3FF724085D;
	Wed, 23 Aug 2023 09:38:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3FF724085D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E0E87C0DD5;
	Wed, 23 Aug 2023 09:38:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3B6AFC0032
 for <bridge@lists.linux-foundation.org>; Wed, 23 Aug 2023 09:38:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 16737404F4
 for <bridge@lists.linux-foundation.org>; Wed, 23 Aug 2023 09:38:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 16737404F4
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=yahoo.com header.i=@yahoo.com
 header.a=rsa-sha256 header.s=s2048 header.b=KSXvdKHM
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id RGyXmpzkmMRG for <bridge@lists.linux-foundation.org>;
 Wed, 23 Aug 2023 09:38:50 +0000 (UTC)
Received: from sonic311-23.consmr.mail.gq1.yahoo.com
 (sonic311-23.consmr.mail.gq1.yahoo.com [98.137.65.204])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1CD87404D3
 for <bridge@lists.linux-foundation.org>; Wed, 23 Aug 2023 09:38:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1CD87404D3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1692783529; bh=+w0Wm6hyHlWivjBgD62leWRc9RGZrULFgUCRifIBJP8=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From:Subject:Reply-To;
 b=KSXvdKHMTxWHxK4vL3v/uVmEYg3AejG9NLZbluoF8tdjYQctcQDOQciFNISLS2LAe6yXGmihisqllrTtLSLaNoPPhQL8Tvgkni16Ol6smpwasXWy2AwOvu1IDmICk5R/DCjmQj7/CKzz8qZa4ret4AP8zXKzRfoKSNgIY7sypWnocimBt4wc2IlthtMqjr3lgGIY4BNCateLfwWoYEBdik0J3qBQ5pzoLWhIwzyBG98s9jNXD50aEK0RP7zWp7aUzrOxYIqLyAiEhIaIR6BUnMxpL/5cllfIZUhnb9T81B+kBHeFu83w+ERS0R3hpjZiLBsol+8niejQQLKBBEWFmw==
X-SONIC-DKIM-SIGN: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
 t=1692783529; bh=tGk6qV/3/aPkj7TosgncTQa92JWRR1OYxU15hEVYqdP=;
 h=X-Sonic-MF:Date:From:To:Subject:From:Subject;
 b=lsLxh3m4lDG0GslaX1LyXefpW/jmMGUIUxlhAUhxwAjqu7gQjAcenWwZIomZGFRlY+btaHLvJsS5pLwPKaUJbtX1BGzUpsBlmILMtj57+bjjWQ45IKs8JAwg1dCN7NcFc5fTiRE72Z6pSs8poC/VpYYGDj50583F+K/YlJYJUbBdZ3KVHZ73iZhQhRZIzMax8w3tUsRiQY/RGlf5s50IePUqAz0ncXqzl0myXz9Qu24vjjfRUN2MYVY/oFq7iDOWAXn7cGaRX/1Hc4qxn3nySImcty4Yus8xnWkbK2f1emU5GyxvoFH/ksCJK06zwi/QC6ul/88UZifBYYT6UIPLGg==
X-YMail-OSG: gOhcsBQVM1m5V90zERBUK.6oevDHUVjGD7KM60zfAVnbQRcqDygoYsUlCrR.2vI
 ijGOeKJN27DYMxyEcFIRZWJHId40vCotrEnSNoNWvV6.z4HS77JycWWLlmBfc7k3eqQAC3q0PCl3
 JLL75KXTsSNGxtJg2ArPmj4NGNd2Yo17vuRa2dcJw3UaF3kMAmjVOSXra4gp75BiE2DXc_T6roGb
 XFT9iJFQMbWsBF5vv2iDmUwxrburtkPvdrkfATedB2jQtgHljfvKius3ejzzipPX43xAUvqYUwN5
 ePLDWX5.O_8GEiuD58s6GJClKDiL9P7HDuEYU382Z3xub7bPDh6_nWD4v2UaXvxIhq5jox4L3NGS
 7Ex6B0mZeLxsE7iGU3fhxpAZKDBRCetam3eMJnTl.tTnM7.Ga3Ndfr3GfZMWi5brqchZF40mBhrj
 oJGABPpUJ8Lu.ukHStcd.MsBTcjdmsnanAgDsFYPVFyj4prlgL4bgxH5KyczGT.ne_nY.pOCxpOK
 KMtvtNkBXhJo63SJK8gOafmUxi.MjJVcn.Eff5RrC6IpMGoNNWJsyMmymFwTK7IRGM5kUNmKqfOE
 A5hgpWYojZferZOq8.5Ie8jFQ6GwaZG_2TGdPyK3z05mVBWDDzbY5RDiKMYRd0p0GUYAr8ry_vRm
 xvRH6UL6AplsalJucMtybfkDzssLA5Oq.IlFKXWxGwlJyYXt9uhgOJSSgr6HtbWGFfzYh.IdKQBM
 lWb2NDZjJOnKBEX2ygu5T1RuEVQbFneHgmJKMbpQppjhI6doArrV2T7QGZslmewhTkpf3Hvncdia
 UUkE5BYNw5p7.6yGDTg3F06ZfQgcgWoUCmsI9nnlAkLWuGyPI3f5dB.e2JGY9vcBrmTdZNX2_Es_
 QK1DmlGhyBS6V0nZIxTmppVlgJ2p6M5It3Zu6231tz.Rr5VE7RRoW8KIRsWzD_BfUON.8ysV9ACE
 nTqGVIAAEC.BSfCSq9hpN1dkXW9FTDf_PVWDI4PknaliPKcoabwwzfFbaU_n9nYLaeHwB8KUJC8W
 eHTSnaZT34x17Za4.Xne9ZKBHa8NStdBFF_9XlwDvaTl3CRYCgdhhwZEzbWUp18WoZBLo24fDKia
 FWBFQeXCfdNqSkzatHTjC6xutjVjhBQjixbMou64jZd0lmTvMQ5MUaRZmTBdP9aHLjK038zp6jfg
 _cj.0gMPDejGIO_uQnc.hxVGZRlJeRNUtUr7vrEuH05khRMv_XkdEb5H.vLzSy.fSNosFn_bZU8u
 OISrG4uPNkiGYheDZIb053Ne.qzuoZeNoN8gCmZAE02JOv5W8j9m7lO1WClHpypEekCa2UfZgqKl
 Fh_VRnC.Mn11IEvvRG0egxZ3WpOayg.kgiuAiM.ju8uu9ZDd638IGFackftLRmU5zqwfKj2Xrti6
 s2hD7bkXfSZHV9h19XVfNtrxPiWMWfTZEh7Qq5c..Ki8INIzL5.Q4NWX5lJlw4Sa7fzMm6BmPqOi
 ZxR9LZRKjkrongVfBggzBxf7JZPlHG6j_X1z0GAou5REIiT5Bvv.Sey2Ev0kyP_abMehKD.FFi9w
 OsgguvqNw4EIu48cPxM5ZMAvMDZvmpn20mGIboa4BNk2urAahEwAIYN.64fmG.mPrvdsoyXiQrEo
 FBHE2S.b92O12lt3v8i4wUMxOpTzV9ZxmnT8cNJdXncA9uv25GVnNy1mA5z2jnpHuHvVwQjXW4vh
 r0oP6kG.66Zgnu25EGoSsw2NJtIGvOYT0Z5EoFjBoPAQUI84jm3I2.5fEc.IjNHApqxTaI2zxkAs
 R1FCGJQeynpy1mS0FT1n14yhNpvkVbqRfKm51gxXoTWygs52Q8mpwhTQnaNBAIqUALTwAMJlgKKT
 rp07_mFHDQuwgxROxYLmXfEYWrA9ACR0nzIUubwjhD.OyjZjQHlnCbpQXJJ4TPrpfN1q8BS_VqIg
 nPYE3KVvyjH2qNLzqGLNkbQZaCOGG4w2LRouVwuEM1x9UKhH9skPsfU2BDt7P6kjbkzEiS8Vm3lW
 sCiLRWQSk.6L.Yo3EkagmX5eeiQ_UN0OHa8G2MMqbkEnuVFENuThJIdjmNjI9fwf39L3.f9VdJd5
 E4zD2Njq_2PJv_DxpzpfFzcsFliYNi9ZqO6l7fcHRFkKPLYXFv.xZEt2t3ulrysa9wG8lA1pgPPJ
 gfivbgKa19W.MERu2PU5c4zstOmccOMr9F8.J2hShl_eMOBJysF.Hdo7JiL1yD4UR0SIZ5fx0MSo
 k8Uj2Yx19uZhq2VOurPH.Agz83Ewi
X-Sonic-MF: <astrajoan@yahoo.com>
X-Sonic-ID: e296bae2-b9ee-4be7-81a7-aa85f7cd568e
Received: from sonic.gate.mail.ne1.yahoo.com by
 sonic311.consmr.mail.gq1.yahoo.com with HTTP; Wed, 23 Aug 2023 09:38:49 +0000
Received: by hermes--production-gq1-6b7c87dcf5-qfzfj (Yahoo Inc. Hermes SMTP
 Server) with ESMTPA ID 80bd736a20866ad4598eb86d929b5af7; 
 Wed, 23 Aug 2023 09:38:48 +0000 (UTC)
Date: Wed, 23 Aug 2023 02:38:46 -0700
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20230823093846.7wzrhnqdk2wyqud2@Astras-Ubuntu>
References: <00000000000051197705fdbc7e54@google.com>
 <20230819081057.330728-1-astrajoan@yahoo.com>
 <df28eac7-ee6e-431c-acee-36a1c29a4ae0@blackwall.org>
 <20230819225048.dxxzv47fo64g24qx@Astras-Ubuntu>
 <c81340d8-25f3-4014-b881-5afe01b56f6b@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c81340d8-25f3-4014-b881-5afe01b56f6b@blackwall.org>
X-Mailer: WebService/1.1.21732
 mail.backend.jedi.jws.acl:role.jedi.acl.token.atz.jws.hermes.yahoo
Cc: f.fainelli@gmail.com, ivan.orlov0322@gmail.com, keescook@chromium.org,
 arnd@arndb.de, vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, mudongliangabcd@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com,
 syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com, kuba@kernel.org,
 skhan@linuxfoundation.org, pabeni@redhat.com, davem@davemloft.net,
 hkallweit1@gmail.com
Subject: Re: [Bridge] [PATCH] net: bridge: Fix refcnt issues in dev_ioctl
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
From: Ziqi Zhao via Bridge <bridge@lists.linux-foundation.org>
Reply-To: Ziqi Zhao <astrajoan@yahoo.com>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

On Tue, Aug 22, 2023 at 01:40:45PM +0300, Nikolay Aleksandrov wrote:

> Thank you for testing, but we really need to understand what is going on and
> why the device isn't getting deleted for so long. Currently I don't have the
> time to debug it properly (I'll be able to next week at the earliest). We
> can't apply the patch based only on tests without understanding the
> underlying issue. I'd look into what
> the reproducer is doing exactly and also check the system state while the
> deadlock has happened. Also you can list the currently held locks (if
> CONFIG_LOCKDEP is enabled) via magic sysrq + d for example. See which
> process is holding them, what are their priorities and so on.
> Try to build some theory of how a deadlock might happen and then go
> about proving it. Does the 8021q module have the same problem? It uses
> similar code to set its hook.

Hi Nik,

Thank you so much for the instructions! I was able to obtain a decoded
stacktrace showing the reproducer behavior in my QEMU VM running kernel
6.5-rc4, in case that would give us more context for pinpointing the
problem. Here's a link to the output:

https://pastecat.io/?p=IlKZlflN9j2Z2mspjKe7

Basically, after running the reproducer (line 1854) for about 180
seconnds or so, the unregister_netdevice warning was shown (line 1856),
and then after another 50 seconds, the kernel detected that some tasks
have been stalled for more than 143 seconds (line 1866), so it panicked
on the blocked tasks (line 2116). Before the panic, we did get to see
all the locks held in the system (line 2068), and it did show that many
processes created by the reproducer were contending the br_ioctl_mutex.
I'm now starting to wonder whether this is really a deadlock, or simply
some tasks not being able to grab the lock because so many processes
are trying to acquire it.

Let me know what you think about the situation shown in the above log,
and let's keep in touch for any future debugging. Thank you again for
guiding me through the problem!

Best regards,
Ziqi
