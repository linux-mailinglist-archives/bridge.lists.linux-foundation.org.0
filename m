Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15545535068
	for <lists.bridge@lfdr.de>; Thu, 26 May 2022 16:13:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4181C60B47;
	Thu, 26 May 2022 14:13:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Q33QKGBlBFOA; Thu, 26 May 2022 14:13:36 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id D7DE760FE5;
	Thu, 26 May 2022 14:13:35 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8BA3DC0081;
	Thu, 26 May 2022 14:13:35 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E4844C002D
 for <bridge@lists.linux-foundation.org>; Thu, 26 May 2022 14:13:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C010B42599
 for <bridge@lists.linux-foundation.org>; Thu, 26 May 2022 14:13:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp4.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=messagingengine.com
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Kbc-RkswOFCA for <bridge@lists.linux-foundation.org>;
 Thu, 26 May 2022 14:13:32 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.8.0
Received: from wout3-smtp.messagingengine.com (wout3-smtp.messagingengine.com
 [64.147.123.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id DC6FC42597
 for <bridge@lists.linux-foundation.org>; Thu, 26 May 2022 14:13:32 +0000 (UTC)
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
 by mailout.west.internal (Postfix) with ESMTP id 2BB18320095B;
 Thu, 26 May 2022 10:13:27 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute5.internal (MEProxy); Thu, 26 May 2022 10:13:29 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:date:date:feedback-id
 :feedback-id:from:from:in-reply-to:in-reply-to:message-id
 :mime-version:references:reply-to:sender:subject:subject:to:to
 :x-me-proxy:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=
 fm1; t=1653574406; x=1653660806; bh=vnwACNqhZoOoXwIiQWU2wL/gnnhq
 0onDp8LHcdhWTNg=; b=OuVZF/6dfxHAylAnDM80GjsVlw5t/W0/v3Ac/hSkZlW3
 6budAzqVou/8FMEF8bHQ3QdbUIZLRaBN6+Os28Hbm5QJzyZTQWOK6NHeuvozpG4X
 Dw6IKF742xWjTvOZGmrHJNkcQ4/nE8in2JOlJP4BZYDtYTde62kx6igeR8uCeLaw
 lqwvqMNvwbUWySqZ0dgh0eUEAl8kttTvhPlDv8Lms6Jmn8JNq/2E0/cIkjolRT16
 dzsbcLrSWh204ftIGEj/i3JiG2LTn1gJ60yBTGlDpbTwsAmMXpxVCzBa1AOlCDl0
 NrjltsJu1VRuvFQMfz7Z7AaD39FdaMLbY5wxNbs+Rw==
X-ME-Sender: <xms:BYuPYrqRIAexR2_L_gBVXKr6byVNV7aHujxd6DXwJKNyvNrsAgSi0w>
 <xme:BYuPYlpEOTeXblN17XiBCOveogzmYPbW-fTtGz_0fc6JKXGSF0H4rLRc1DpCshPCx
 2TuFVL6uR9cz9A>
X-ME-Received: <xmr:BYuPYoNOI_2OxjK1Whx8-npY4qsyGCZ8o9p--VASWEuvNU6rBXIS3W1NFxC2z0wWk5jz3tzdDLz4KAy3tq9QuGfv2cIZwQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedvfedrjeejgdejvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:BYuPYu6LOcBOGbfpSYXrF7jWxzX8QW3KrbfG2IwsVcOVQkDRuJ4PGA>
 <xmx:BYuPYq4s5Cu4DqXxPsSLmODY0tulu-Vdn__mr-Tk5LpSVy88CVWrRA>
 <xmx:BYuPYmj2mUW2TQGb_O4uvddrVIX2MtiVnfqzRIUWdobW5Hd-IkGDYA>
 <xmx:BouPYnwL6CZ3no6COUQ1FGwlYR2SWZ-PYihJspZ35uq2Zymi6UllSw>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Thu,
 26 May 2022 10:13:24 -0400 (EDT)
Date: Thu, 26 May 2022 17:13:22 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Hans Schultz <schultz.hans@gmail.com>
Message-ID: <Yo+LAj1vnjq0p36q@shredder>
References: <20220524152144.40527-1-schultz.hans+netdev@gmail.com>
 <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220524152144.40527-2-schultz.hans+netdev@gmail.com>
Cc: Ivan Vecera <ivecera@redhat.com>, Andrew Lunn <andrew@lunn.ch>,
 Florian Fainelli <f.fainelli@gmail.com>, Jiri Pirko <jiri@resnulli.us>,
 Daniel Borkmann <daniel@iogearbox.net>, netdev@vger.kernel.org,
 Nikolay Aleksandrov <razor@blackwall.org>, bridge@lists.linux-foundation.org,
 Eric Dumazet <edumazet@google.com>, Ido Schimmel <idosch@nvidia.com>,
 Vivien Didelot <vivien.didelot@gmail.com>,
 Hans Schultz <schultz.hans+netdev@gmail.com>, Paolo Abeni <pabeni@redhat.com>,
 linux-kselftest@vger.kernel.org, Roopa Prabhu <roopa@nvidia.com>,
 kuba@kernel.org, Vladimir Oltean <olteanv@gmail.com>,
 Shuah Khan <shuah@kernel.org>, davem@davemloft.net,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH V3 net-next 1/4] net: bridge: add fdb flag to
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

On Tue, May 24, 2022 at 05:21:41PM +0200, Hans Schultz wrote:
> Add an intermediate state for clients behind a locked port to allow for
> possible opening of the port for said clients. This feature corresponds
> to the Mac-Auth and MAC Authentication Bypass (MAB) named features. The
> latter defined by Cisco.
> Locked FDB entries will be limited in number, so as to prevent DOS
> attacks by spamming the port with random entries. The limit will be
> a per port limit as it is a port based feature and that the port flushes
> all FDB entries on link down.

Why locked FDB entries need a special treatment compared to regular
entries? A port that has learning enabled can be spammed with random
source MACs just as well.

The authorization daemon that is monitoring FDB notifications can have a
policy to shut down a port if the rate / number of locked entries is
above a given threshold.

I don't think this kind of policy belongs in the kernel. If it resides
in user space, then the threshold can be adjusted. Currently it's hard
coded to 64 and I don't see how user space can change or monitor it.
