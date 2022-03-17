Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2C8E34DC7CB
	for <lists.bridge@lfdr.de>; Thu, 17 Mar 2022 14:44:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id C673940B31;
	Thu, 17 Mar 2022 13:44:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id rSukWbv4_JFf; Thu, 17 Mar 2022 13:44:19 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 5F2C440B04;
	Thu, 17 Mar 2022 13:44:18 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 12514C0082;
	Thu, 17 Mar 2022 13:44:18 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 26B62C000B
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 13:44:16 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2287A8471E
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 13:44:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id N9Un169ILwh5 for <bridge@lists.linux-foundation.org>;
 Thu, 17 Mar 2022 13:44:15 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com
 [66.111.4.28])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 03C70842CA
 for <bridge@lists.linux-foundation.org>; Thu, 17 Mar 2022 13:44:14 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id 41A805C00C2;
 Thu, 17 Mar 2022 09:44:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Thu, 17 Mar 2022 09:44:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:from:from
 :in-reply-to:in-reply-to:message-id:mime-version:references
 :reply-to:sender:subject:subject:to:to:x-me-proxy:x-me-proxy
 :x-me-sender:x-me-sender:x-sasl-enc; s=fm3; bh=cgLvCoZ+reMOUxcSz
 Tb0NcXr/MQseBQTzNT+xFvmncU=; b=hPKPfuHBJBEX+L4UQ2y043DZBPIh293rI
 doLU9LsgikXoL8Ib3ZEYa7L0VbDSUWgoXRHnUtNA0Qy4F27Yc3omfSGkvDItb/QN
 yK4/gBMjP9D0EFTMxsb0m1u/rowaRgVmRl1scbqYycJpn5AgYVIELxKQshjr6DHt
 BwXij39HpbqmZU4lxQBz4XWgDaQ3/lafgfFemTYAngvEIIJe6iS5NqnNPfehi+Xt
 JB/xy6oFqwEwd+zKcFSl9oM6W6pcCShLAmMcd9Wz1UabX155iPLgWP6AYJKGYQP5
 JU5d4z1vnokvLa/590Krvh8xlCYqP925JjCRXxNxkumgKWdihpecA==
X-ME-Sender: <xms:KDszYnvdAvEu4cVwdNHwn1ASuT1qwlU2-gVpiPrc2-hpdh6p0qVN6g>
 <xme:KDszYofrjlCHSv_gaboa9HwZWAvmu6Ss_yC3rTv26SgN-k7uB1oaeDw-VOMzIHxxg
 49I3EBoByvxUFQ>
X-ME-Received: <xmr:KDszYqzqSd5g1UUOe8q5anZ6MAHqEYDn6XVmnaBDXQzG177n5DWWaeN8YkThEMUQfTqY2nfAO7nIrjF2_rVBbGzZzzs>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvvddrudefgedgheehucetufdoteggodetrfdotf
 fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
 uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
 cujfgurhepfffhvffukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedtffekkeefudffveegueejffejhfetgfeuuefgvedtieehudeuueekhfduheel
 teenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:KDszYmPfwtFcAL-L4CUmMSLMAvAlLM3frY0sM4vhnKWF6ODaTf7yMQ>
 <xmx:KDszYn_TM2qjdwpdr2XbT4iAqXl07aV1vvTD9ZqxibXr82zMzlBRYA>
 <xmx:KDszYmXDD2R33H3dsZ8iD_Mf5hwAPog2YY2QH9H-BprZ9sWGQEFeKQ>
 <xmx:KTszYkixf2kmsYBqmOQPODCE6ffMKZnIeRtjvKGGtqiF8Cp9yGXfSg>
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 17 Mar 2022 09:44:08 -0400 (EDT)
Date: Thu, 17 Mar 2022 15:44:03 +0200
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>, razor@blackwall.org
Message-ID: <YjM7Iwx4MDdGEHFA@shredder>
References: <20220317093902.1305816-1-schultz.hans+netdev@gmail.com>
 <20220317093902.1305816-2-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220317093902.1305816-2-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, linux-kselftest@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>, kuba@kernel.org,
 Vladimir Oltean <olteanv@gmail.com>, Shuah Khan <shuah@kernel.org>,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH v2 net-next 1/4] net: bridge: add fdb flag to
 extent locked port feature
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

On Thu, Mar 17, 2022 at 10:38:59AM +0100, Hans Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. This feature corresponds
> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
> latter defined by Cisco.
> Only the kernel can set this FDB entry flag, while userspace can read
> the flag and remove it by deleting the FDB entry.

Can you explain where this flag is rejected by the kernel?

Nik, it seems the bridge ignores 'NDA_FLAGS_EXT', but I think that for
new flags we should do a better job and reject unsupported
configurations. WDYT?

The neighbour code will correctly reject the new flag due to
'NTF_EXT_MASK'.
