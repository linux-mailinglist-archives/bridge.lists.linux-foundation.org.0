Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3CB466D9970
	for <lists.bridge@lfdr.de>; Thu,  6 Apr 2023 16:17:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 65DBB417BA;
	Thu,  6 Apr 2023 14:17:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 65DBB417BA
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=gmail.com header.i=@gmail.com header.a=rsa-sha256 header.s=20210112 header.b=AEdRrM5s
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PwD70L4IDjR5; Thu,  6 Apr 2023 14:17:47 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 9450041E31;
	Thu,  6 Apr 2023 14:17:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9450041E31
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 1F62FC002A;
	Thu,  6 Apr 2023 14:17:46 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9BB13C002A
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 14:17:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6952C60F0D
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 14:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6952C60F0D
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20210112 header.b=AEdRrM5s
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id tffKRir8dMz6 for <bridge@lists.linux-foundation.org>;
 Thu,  6 Apr 2023 14:17:44 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05D9F60E29
Received: from mail-qt1-x835.google.com (mail-qt1-x835.google.com
 [IPv6:2607:f8b0:4864:20::835])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05D9F60E29
 for <bridge@lists.linux-foundation.org>; Thu,  6 Apr 2023 14:17:43 +0000 (UTC)
Received: by mail-qt1-x835.google.com with SMTP id h3so11391344qtu.1
 for <bridge@lists.linux-foundation.org>; Thu, 06 Apr 2023 07:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20210112; t=1680790662;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :from:to:cc:subject:date:message-id:reply-to;
 bh=7vagdoWVLs74/YSjQDxpvM8aXKUgVP/cIPrMpvJRI3U=;
 b=AEdRrM5sx5wSpH/Jo7wv8lWa6/vwAix2RC/BI6EHQ0zoLks9Xls9n/l3R7E5rJoF9a
 fMmftNB7rQIK9dgkYMUSm1rg6v2oQhrSbdcNwwYQwM6CoLyNsZiKV9U2xiyUyQ+T8aKs
 j5vYJM07vPNKsAmQFF4MggGWw0X+f2/TSHkhkcECSByJBTJJ39FCzg5Y4SaOr3Fq3sVS
 jSPFhCcPNKgTeOGHVKnQdPhK7lvZOVylUuBEJzZtX/SgqdjhROVvj069Etzt7sjL3ncL
 4fAwz1Hhw/0TZJR8AHAW+ZYTde9vbvV6ssitGwh0UMxCtMPKfIoBoATgFcGD10d3JJaP
 CBWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1680790662;
 h=content-disposition:mime-version:message-id:subject:to:from:date
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=7vagdoWVLs74/YSjQDxpvM8aXKUgVP/cIPrMpvJRI3U=;
 b=oAbwt9yM88HTSL+qJwk4mzOikPuhfxuvt33LVqkWHrplUOGR52zsvTjRAw2MAirqQl
 ei9olBvzZFxao6eOiZSWtQcY/ZWm29yt4hkOaZglt36bnwl54VGupvH5H8TWUFfrLvCW
 O7DfivLUdgHBwuSahNcDfAjUix8jRY5Kjwyej9/oDbPad+iVdE3akiuoGYM8h30/DqOU
 EY9KJoP+OUPZOsapaTGuovDO9aQ1cY8AdRY/B+in7DLw2ed+qr52QA31qOoDTKrjkBIy
 x48Eatxy2Zvku7cVjBqh3G/F0W4Q5v5pQkpjjKru6ilMOVu3XOgSAzj84PCqEncGxRXM
 1tbw==
X-Gm-Message-State: AAQBX9fqPTP+8V0HYF0J9UB390LBc6M6Dpir2bx6Voel+xtXcUadscB7
 RK3RBk4wKvyYr79MK5L9FocHYuO5ED4=
X-Google-Smtp-Source: AKy350Y2sEaLuNLxznQXWjMtnE3fvJSimN02UyX+/JFwOrcOpiQGYHxopwakiDNYRZEli0IbeDnqYw==
X-Received: by 2002:ac8:5e08:0:b0:3dc:ac3b:ca6c with SMTP id
 h8-20020ac85e08000000b003dcac3bca6cmr10883258qtx.6.1680790662370; 
 Thu, 06 Apr 2023 07:17:42 -0700 (PDT)
Received: from errol.ini.cmu.edu (pool-72-77-81-136.pitbpa.fios.verizon.net.
 [72.77.81.136]) by smtp.gmail.com with ESMTPSA id
 g189-20020a37b6c6000000b00745a78b0b3asm480857qkf.130.2023.04.06.07.17.41
 for <bridge@lists.linux-foundation.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 06 Apr 2023 07:17:41 -0700 (PDT)
Date: Thu, 6 Apr 2023 10:17:40 -0400
From: "Gabriel L. Somlo" <gsomlo@gmail.com>
To: bridge@lists.linux-foundation.org
Message-ID: <ZC7UhHW8+82OQ5oL@errol.ini.cmu.edu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
X-Clacks-Overhead: GNU Terry Pratchett
Subject: [Bridge] Option to forward *unconditionally* on a bridge?
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

TL;DR: Is there a way to force a bridge to forward anything and
everything on all ports (except the ingress port) *regardles* of
any permanent FDB entries (such as the MAC addresses of interfaces
acting as bridge ports)?

For context, I'm using a network-namespace (container) based simulator
(think GNS3 or CORE), which allow me to run multiple FRR instances
in their own dedicated netns, connected together by veth pairs and
bridges.

To bridge this simulation outside the machine hosting it, the
simulators allow host machine interfaces to be bridged to bridges
and veth pairs that belong to the simulation, e.g.:

 -----------------------------
 VM running simulation       |
                             |
 sim. node,                  |
 (container),                |
 dflt gateway                |
 -----------    - br0 -      |             -----------------
           |   /       \     |  inter-VM   | External VM   |
      eth0 + veth0    ens32  +-- vswitch --+ using in-sim  |
   Sim.MAC |          VM.MAC |             | dflt. gateway |
 -----------                 |             -----------------
 -----------------------------

This requires the vswitch outside of the vm hosting the simulation to
allow promiscuous mode (so that containers can send/receive Ethernet
frames through the hosting VM's interface (e.g., ens32).

It turns out that at least on one "cloudy" hosted solution the guest
VMs are forbidden from sending "spoofed" ethernet traffic, i.e. the
ens32 "vm.mac" address is strictly enforced outside the VM (on the
inter-vm vswitch).

The obvious solution would be to assign ens32's VM.MAC as the mac
address of eth0 inside the container, which would allow it to talk
on the ethernet broadcast domain bridged via br0 and the inter-vm
vswitch (assuming we only have *one* such container on the "inside").

Trouble is, br0 won't forward frames *to* VM.MAC received from
external sources, since that is a permanent FDB entry associated 
with the "ingress interface".

I'm looking to turn br0 into a "dumb hub". Typically, the closest
approximation to "hub behavior" is accomplished by disabling MAC
learning on the bridge interface(s), which will force permanent
flooding.

Turns out, the exception to that is if a mac address associated with
one of the bridge ports is involved -- no "hub" behavior in that case,
because those FDB entries aren't learned, but rather permanently
installed during bridge set-up.

Any way to override that (and ignore permanent FDB) entries would save
me a lot of effort to "hack" my way around this restriction using
multiple bridges and ebtables NAT :)

Thanks for any clue, pointers, or advice.

--Gabriel
