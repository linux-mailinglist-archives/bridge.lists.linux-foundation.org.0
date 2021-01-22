Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 21408301803
	for <lists.bridge@lfdr.de>; Sat, 23 Jan 2021 20:23:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 846F4873B7;
	Sat, 23 Jan 2021 19:23:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0lckBljX-5az; Sat, 23 Jan 2021 19:23:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E6008873B3;
	Sat, 23 Jan 2021 19:23:14 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id CE607C013A;
	Sat, 23 Jan 2021 19:23:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 35287C013A
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 16:06:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 2327986AAE
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 16:06:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id HdIAwlNz3Yce for <bridge@lists.linux-foundation.org>;
 Fri, 22 Jan 2021 16:06:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail-lj1-f173.google.com (mail-lj1-f173.google.com
 [209.85.208.173])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 2E35A86A92
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 16:06:00 +0000 (UTC)
Received: by mail-lj1-f173.google.com with SMTP id f2so1885401ljp.11
 for <bridge@lists.linux-foundation.org>; Fri, 22 Jan 2021 08:06:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:in-reply-to:references:date:message-id:mime-version;
 bh=dYnyyDVesC6Z9/jeabSdXpAorVFlaVIqQIB+RhVpm20=;
 b=Pjk8XN0YQxDSUm0xUJqm0sY6ZgUSIKRGcuyScCBDKU62oyPWiFsPlYm0eGDjATy1ux
 Wi0pqVdpZ4UJqGG5jrqJn1C79iqJLS3ff92ZspYcX9f34oAOIpN2MK0Z/zK5loKz4oWr
 ylNlljL+Tp5QHdw7mG0i7dKnff35K15eQXAe66PW0a3yHrW5i+NdWrxNi5WHlLeAJfhp
 PVmXFv1bPnMYS7icgAEdqy5UYwDwmp9Fc7+J8CXxaXOyeeuw5MhtW1mr6CZv05b88chG
 8ZcbCIplVT8XUEq7blupmNhPcBuwf1vFfXK9czYXR+5en2Wlf8Q73jrym1XLEGMGlEEx
 8p3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:in-reply-to:references:date
 :message-id:mime-version;
 bh=dYnyyDVesC6Z9/jeabSdXpAorVFlaVIqQIB+RhVpm20=;
 b=LtRNWe1JcpT26uS476AwjdmSVIxMTZeIHJXKB17jteWrRncfzQmDBMQeIGMVA93DfB
 i190I4t7PSOshdDAY8J6xqi7hZyqX8l8ppIfeCEx4hBI4qdPlANMljxRh5aln6tNVhhh
 NU+UacuSvIA90z/Dowz+wK15wxSqe76taQZrtnNGkGr5xAwR75w+SN0aeYoCYqGhbQtc
 D/HzzE9Yyz96Fm1RdDPXowmklju375NBT2dgBo50UMf+ZhWxkgoqVryaF9+LRhjREXQD
 Pqdwhs6dgvpkWMr8NnBtXu/baRMX87yylzFwy4EODOzW5nqRELdNR+mu+1RgKZkII5QV
 LURQ==
X-Gm-Message-State: AOAM532+3fR67fsIiATL5fVpwJZqhzY71eGsM7DIeVVAFLcofUHQ7NuM
 NuArcXKNyAogZsWhXUnMbHCnqtMEb3r0CZMb
X-Google-Smtp-Source: ABdhPJxBa1WiN/jurrX5CRJ6eaLx6b/Zr+ZK+9s9s6R+83bCQy2uN+hg+wESRQnZBzKPbEdJc33izA==
X-Received: by 2002:a2e:b52c:: with SMTP id z12mr1144667ljm.250.1611331558242; 
 Fri, 22 Jan 2021 08:05:58 -0800 (PST)
Received: from luthien (h-82-196-111-206.NA.cust.bahnhof.se. [82.196.111.206])
 by smtp.gmail.com with ESMTPSA id
 n23sm1027123lji.36.2021.01.22.08.05.57
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 22 Jan 2021 08:05:57 -0800 (PST)
From: Joachim Wiberg <troglobit@gmail.com>
To: Nikolay Aleksandrov <nikolay@nvidia.com>,
 Horatiu Vultur <horatiu.vultur@microchip.com>, davem@davemloft.net,
 kuba@kernel.org, roopa@nvidia.com, allan.nielsen@microchip.com,
 netdev@vger.kernel.org, linux-kernel@vger.kernel.org,
 bridge@lists.linux-foundation.org
In-Reply-To: <b54644f6-b559-b13b-adf8-d95f7b2a6885@nvidia.com>
References: <20210112135903.3730765-1-horatiu.vultur@microchip.com>
 <32bf6a72-6aff-5e36-fb02-333f3c450f49@nvidia.com> <8735z0zyab.fsf@gmail.com>
 <b54644f6-b559-b13b-adf8-d95f7b2a6885@nvidia.com>
Date: Fri, 22 Jan 2021 17:05:57 +0100
Message-ID: <87czxxvtwa.fsf@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain
X-Mailman-Approved-At: Sat, 23 Jan 2021 19:23:12 +0000
Subject: Re: [Bridge] [RFC PATCH v2] net: bridge: igmp: Extend IGMP query to
	be per vlan
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

On Mon, Jan 18, 2021 at 13:53, Nikolay Aleksandrov <nikolay@nvidia.com> wrote:
> On 16/01/2021 17:39, Joachim Wiberg wrote:
>> We have discussed at length at work if an IGMP snooping implementation
>> really belongs in the bridge, or if it's better suited as a user space
>> daemon?  Similar to what was decided for RSTP/MSTP support, i.e., the
>> bridge only has STP and RSTP/MSTP is handled by mstpd[2].
>> 
>> Most of what's required for a user space implementation is available,
>> but it would've been nice if a single AF_PACKET socket on br0 could be
>> used to catch what brport (ifindex) a query or report comes in on.  As
>> it is now that information is lost/replaced with the ifindex of br0.
>> And then there's the issue of detecting and forwarding to a multicast
>> routing daemon on top of br0.  That br0 is not a brport in the MDB, or
>> that host_joined cannot be set/seen with iproute2 is quite limiting.
>> These issues can of course be addressed, but are they of interest to
>> the community at large?
>> 
>> [1]: https://lore.kernel.org/netdev/20180418120713.GA10742@troglobit/
>> [2]: https://github.com/mstpd/mstpd

Ni Nik,

> I actually had started implementing IGMPv3/MLDv2 as a user-space daemon part of
> FRRouting (since it already has a lot of the required infra to talk to the kernel).
> It also has IGMPv3/MLDv2 support within pimd, so a lot of code can be shared.

Interesting!  Glad to hear other people have had similar ideas :)

> Obviously there are pros and cons to each choice, but I'd be interested to see a
> full user-space implementation. I decided to make the kernel support more complete
> since it already did IGMPv2 and so stopped with the new FRR daemon.

Yeah it's difficult to find the right cut-off for when it'll be more
useful to do it all in userspace.  For us I think it was the combination
of having many VLANs and wanting full querier support, i.e., not having
any multicast router available.  When we had to go dumpster diving for
useful IP address in IGMP queries on higher-level VLAN interfaces.

> If needed I'd be happy to help with the kernel support for a new
> user-space daemon, and also can contribute to the daemon itself if
> time permits.

That's good to know.  I think I'll start breathing life into a small
IGMP-only (for now) userspace daemon and see where it leads.  I need
it both for work and for all the various multicast routing projects
I maintain on my spare time.

Would it be OK to send questions regarding issues interfacing with the
bridge and updates/progress to this list for such a project?

Best regards
 /Joachim
