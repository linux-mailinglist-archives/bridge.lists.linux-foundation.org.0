Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id F29691B6AB0
	for <lists.bridge@lfdr.de>; Fri, 24 Apr 2020 03:11:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 0E655886D1;
	Fri, 24 Apr 2020 01:11:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bS70i7-FKAzr; Fri, 24 Apr 2020 01:11:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 088E58867E;
	Fri, 24 Apr 2020 01:11:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D8C9CC1D7F;
	Fri, 24 Apr 2020 01:11:13 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B092FC0175
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 01:11:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 98D5D87FF2
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 01:11:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FUJM9YdIslLF for <bridge@lists.linux-foundation.org>;
 Fri, 24 Apr 2020 01:11:10 +0000 (UTC)
X-Greylist: delayed 01:05:39 by SQLgrey-1.7.6
Received: from mail-pj1-f65.google.com (mail-pj1-f65.google.com
 [209.85.216.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id CDA8887FEE
 for <bridge@lists.linux-foundation.org>; Fri, 24 Apr 2020 01:11:10 +0000 (UTC)
Received: by mail-pj1-f65.google.com with SMTP id a5so3278190pjh.2
 for <bridge@lists.linux-foundation.org>; Thu, 23 Apr 2020 18:11:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20150623.gappssmtp.com; s=20150623;
 h=date:from:to:cc:subject:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=XHt+FuftJsPGeqKy6heDhwHg5C+HSjbnEYws52bz+vg=;
 b=iG8USReCJE1ztEZykLXV7uL9Fy8/axncNlw+Bv/Q61VZ+IWsyngZOqRASZ6M5x44qB
 EOc/OWaB1foWWTqyCLHFzJ2IbhUf5EHueFzU/+vf+LfTksaTHNeDgyFmlDchIRFueVTe
 np46R07CrQETTvX4PrfvpwGVhAVyKLgACyXr/dlmyRyyp+dUSjXyebwne0nL3dnozeJN
 pbCwj8I0fPluDjjOSpFm4ET1T+7T9gi0aziJORIw6u1CzwHNYsKMF8v00hsR8CXu5+Zo
 cepx7pvgqE1XLOdDhd4EkZr+g6uvrlvPoGUApreJ2DCccoX2k2ZVr1UjbxH3Bn/I6v7v
 3iQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=XHt+FuftJsPGeqKy6heDhwHg5C+HSjbnEYws52bz+vg=;
 b=UQidNNEO6ebQFMAE7vQXSZ6WRKIRZ1Fio9L9Hm6yDw/tM3UHmwZOOsjl9A82wBosAH
 Z6Hp9SlI4qOZZ9iDMDxnVSqSS9LNXtFWycgrmFYvS9nEGLov4zUBrYJNuGSudjCxtCBl
 IIWYO3jZy/KuKa2jo/hVYUzzfKNjuYNnjXJiB8Ucjybr7jo1fdDVYOlcLxLrZgd8nh32
 UOV2GnQh54v3gaKhdM9pE5vJnjdWve11mpd2io9hcJ3MRhc4uScuFLzxbfqfJBk4Q4UT
 iVAJpNK8XtIHxLDeYhV/y9FHWUAbg1gEH1YfpV7aH1rkkeyRiqkpyWru4UtwmnfWinSq
 ybGw==
X-Gm-Message-State: AGi0Pub/ObsNTftefR8UweHKkfNvBCSagg/w0JZAhqZJsBnxuP4toOTg
 xX4K3jGPM+ZMuq1IRfL6cw2lXVh+aCs=
X-Google-Smtp-Source: APiQypJvm23OV35t16ydy9e9LoxsKRo2WLGGXHyEG0PLKSWISnq2TVqRGPNdWN4YWMwdckZNAjHshw==
X-Received: by 2002:a17:902:9a03:: with SMTP id
 v3mr6151155plp.272.1587686730810; 
 Thu, 23 Apr 2020 17:05:30 -0700 (PDT)
Received: from hermes.lan (204-195-22-127.wavecable.com. [204.195.22.127])
 by smtp.gmail.com with ESMTPSA id o15sm3325488pjp.41.2020.04.23.17.05.29
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 23 Apr 2020 17:05:30 -0700 (PDT)
Date: Thu, 23 Apr 2020 17:05:21 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <20200423170521.65a3bc59@hermes.lan>
In-Reply-To: <20181116165001.30896-1-nikolay@cumulusnetworks.com>
References: <20181114172703.5795-1-nikolay@cumulusnetworks.com>
 <20181116165001.30896-1-nikolay@cumulusnetworks.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, syzkaller-bugs@googlegroups.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH net v3] net: bridge: fix vlan stats
 use-after-free on destruction
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

On Fri, 16 Nov 2018 18:50:01 +0200
Nikolay Aleksandrov <nikolay@cumulusnetworks.com> wrote:

> Syzbot reported a use-after-free of the global vlan context on port vlan
> destruction. When I added per-port vlan stats I missed the fact that the
> global vlan context can be freed before the per-port vlan rcu callback.
> There're a few different ways to deal with this, I've chosen to add a
> new private flag that is set only when per-port stats are allocated so
> we can directly check it on destruction without dereferencing the global
> context at all. The new field in net_bridge_vlan uses a hole.
> 
> v2: cosmetic change, move the check to br_process_vlan_info where the
>     other checks are done
> v3: add change log in the patch, add private (in-kernel only) flags in a
>     hole in net_bridge_vlan struct and use that instead of mixing
>     user-space flags with private flags
> 
> Fixes: 9163a0fc1f0c ("net: bridge: add support for per-port vlan stats")
> Reported-by: syzbot+04681da557a0e49a52e5@syzkaller.appspotmail.com
> Signed-off-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>

Why not just use v->stats itself as the flag.
Since free of NULL is a nop it would be cleaner?
