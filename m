Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 802AD135FB0
	for <lists.bridge@lfdr.de>; Thu,  9 Jan 2020 18:51:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id C0167883B0;
	Thu,  9 Jan 2020 17:51:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OZXFp7OdvdOk; Thu,  9 Jan 2020 17:51:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by hemlock.osuosl.org (Postfix) with ESMTP id 1D1F18839C;
	Thu,  9 Jan 2020 17:51:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E7ABAC0881;
	Thu,  9 Jan 2020 17:51:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 237FFC0881
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 17:51:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 1CD0521539
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 17:51:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id LuchGP95dpYi for <bridge@lists.linux-foundation.org>;
 Thu,  9 Jan 2020 17:50:58 +0000 (UTC)
X-Greylist: delayed 00:09:14 by SQLgrey-1.7.6
Received: from mail1.fiberby.net (mail1.fiberby.net [193.104.135.124])
 by silver.osuosl.org (Postfix) with ESMTPS id 1E3D4203FC
 for <bridge@lists.linux-foundation.org>; Thu,  9 Jan 2020 17:50:57 +0000 (UTC)
Received: from x201s.roaming.asbjorn.biz (193-104-135-243.ip4.fiberby.net
 [193.104.135.243])
 by mail1.fiberby.net (Postfix) with ESMTPSA id A759A6010C;
 Thu,  9 Jan 2020 17:41:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=fiberby.net;
 s=201905; t=1578591697;
 bh=aO90ZkWcNxvVfMQ699FY54Oi71pyX/FoCIGUYqP1+0U=;
 h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
 b=ZGdO3bXag3oQlpfK+0ry+F2q+jK9NIvMoyCTZ+8g9s+A5xN6ZwndRz+s0AzM6Hjri
 vJT0o0qp16Oooy5k36E16sHSREKf2SpYLk9WYAvXLgDD3Td2OBAqG/oGyh6Woxe45k
 irwutle4gtBzSVE4jfjejfDbJxyt1hg9bhjwymFPIh68o9032/zKqmSOQuYI/ly/Zx
 4EWS9aTpVexV78lZonSKKVul6ey7gZofKsCB1Q7ocC89MNvl3Ar2fS/7Wn3OpB2t4D
 aa6nMdpgdh89WFlMINxTgHHCo6ZSVzFTtGr7B2KcwudgJilzAt9zEnqlfE9EZY9aDG
 V5wfaYA+QQ33A==
Received: from x201s.roaming.asbjorn.biz (localhost [127.0.0.1])
 by x201s.roaming.asbjorn.biz (Postfix) with ESMTP id 0AC5020023E;
 Thu,  9 Jan 2020 17:41:34 +0000 (UTC)
To: Stephen Hemminger <stephen@networkplumber.org>,
 Horatiu Vultur <horatiu.vultur@microchip.com>
References: <20200109150640.532-1-horatiu.vultur@microchip.com>
 <20200109081907.06281c0f@hermes.lan>
Message-ID: <da02006c-dc9d-ce1a-861e-4fc1c1dc2830@fiberby.net>
Date: Thu, 9 Jan 2020 17:41:33 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200109081907.06281c0f@hermes.lan>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: andrew@lunn.ch, jakub.kicinski@netronome.com, davem@davemloft.net,
 nikolay@cumulusnetworks.com, netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 UNGLinuxDriver@microchip.com, Jesper Dangaard Brouer <brouer@redhat.com>,
 anirudh.venkataramanan@intel.com, jiri@mellanox.com,
 jeffrey.t.kirsher@intel.com, dsahern@gmail.com, olteanv@gmail.com,
 vivien.didelot@gmail.com
Subject: Re: [Bridge] [RFC net-next Patch 0/3] net: bridge: mrp: Add support
 for Media Redundancy Protocol(MRP)
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
From: =?UTF-8?Q?Asbj=c3=b8rn_Sloth_T=c3=b8nnesen?= via Bridge
 <bridge@lists.linux-foundation.org>
Reply-To: =?UTF-8?Q?Asbj=c3=b8rn_Sloth_T=c3=b8nnesen?= <ast@fiberby.net>
Errors-To: bridge-bounces@lists.linux-foundation.org
Sender: "Bridge" <bridge-bounces@lists.linux-foundation.org>

Hi Horatiu and Stephen,

Horatiu, thanks for giving this a try. I am looking forward to maybe someday
be able to run ERPS on white box switches.

On 1/9/20 4:19 PM, Stephen Hemminger wrote:
> Can this be implemented in userspace?
> 
> Putting STP in the kernel was a mistake (even original author says so).
> Adding more control protocols in kernel is a security and stability risk.

Another case is VRRP, ERPS (ITU-T G.8032), VRRP group.

My use-case might not be common, but I have machines with about 10k net_dev (QinQ),
I would like to be able to do VRRP group on the outer VLANs, which are only a few
hundred instances without excessive context switching. I would then keep the the
normal keep-alive state machine in kernel, basically a BPF-based timed periodic
packet emitter facility and a XDP recieve hook. So only setup and event handling
has to context switched to user-space.

Unfortunately I haven't had time to explore this yet, but I think such an approach
could solve a few of the reasons that scalable bridge/ring/ha protocols have to wait
20 years before being implemented in Linux.

-- 
Best regards
Asbjørn Sloth Tønnesen
Network Engineer
Fiberby ApS - AS42541
