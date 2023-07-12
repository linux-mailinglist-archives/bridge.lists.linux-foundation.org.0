Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EC0B750B70
	for <lists.bridge@lfdr.de>; Wed, 12 Jul 2023 16:54:10 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 02DF661199;
	Wed, 12 Jul 2023 14:54:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 02DF661199
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key, unprotected) header.d=messagingengine.com header.i=@messagingengine.com header.a=rsa-sha256 header.s=fm2 header.b=dymLeyf7
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eZK4zToSh-gv; Wed, 12 Jul 2023 14:54:08 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 939A3611DC;
	Wed, 12 Jul 2023 14:54:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 939A3611DC
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 2E13AC0DD4;
	Wed, 12 Jul 2023 14:54:07 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 07421C0032
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:54:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id CBBB9611E4
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:54:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CBBB9611E4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id sJ36yfo6cdEB for <bridge@lists.linux-foundation.org>;
 Wed, 12 Jul 2023 14:54:04 +0000 (UTC)
X-Greylist: delayed 00:05:39 by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org AAECD61199
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com
 [66.111.4.29])
 by smtp3.osuosl.org (Postfix) with ESMTPS id AAECD61199
 for <bridge@lists.linux-foundation.org>; Wed, 12 Jul 2023 14:54:04 +0000 (UTC)
Received: from compute2.internal (compute2.nyi.internal [10.202.2.46])
 by mailout.nyi.internal (Postfix) with ESMTP id B50D55C0186;
 Wed, 12 Jul 2023 10:54:03 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
 by compute2.internal (MEProxy); Wed, 12 Jul 2023 10:54:03 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
 messagingengine.com; h=cc:cc:content-type:content-type:date:date
 :feedback-id:feedback-id:from:from:in-reply-to:in-reply-to
 :message-id:mime-version:references:reply-to:sender:subject
 :subject:to:to:x-me-proxy:x-me-proxy:x-me-sender:x-me-sender
 :x-sasl-enc; s=fm2; t=1689173643; x=1689260043; bh=Obdgo1ph00bZH
 C4Rao8ThDReb5dSQF1kT34rZ91WFTE=; b=dymLeyf767vKvw7DaKJM0Dii5A7LX
 RZ4Mf/0kHzgeXmHZmrPM/P4gmp1ktIfgjofNJGNgrceHLjHA4Cp35ijtSXY4Vrv7
 MlSSh4C2+ASUxUCkrLVo6tv3zxUmBssdxYQwO5d2LauQEactqFSXJGUxF/nwK8n9
 i0X6943CwY6PJ7eREhzB8KoO6GnSO89c0XnggOu2WlPt3sKAk+N4xhqi+r9yS3nh
 NaK1U8lqchwiIhsVzivDcoVdVMNcABOFc8ENvh+417xBC8WejQi2TmieX5syle+f
 JlJnAMEgUbvW6lZo5i4KIu/G3IwWBmiFOEPyBNpA2re+X9IBWSt2UO1hA==
X-ME-Sender: <xms:ir6uZDDZOi6xT_08CQxA_WCS_AUsYhVFJyK0DGKhENCdAEuy-3CSwA>
 <xme:ir6uZJi1Za50NRXuExyMughSDGKdFnNR5UHfgT5Is5Dw078imfKhrc4ioT1TjQkhm
 fmFfRHF0cn8ndA>
X-ME-Received: <xmr:ir6uZOk59dFtX2qKs8ID--88lycnisnBjbQYgRB6Ywzry3EZujsIWsFumONBnHKslGQXojzs6pCV0GtcINkPaXPGteA>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedviedrfedvgdekvdcutefuodetggdotefrodftvf
 curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
 uegrihhlohhuthemuceftddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmdenuc
 fjughrpeffhffvvefukfhfgggtuggjsehttdertddttddvnecuhfhrohhmpefkughoucfu
 tghhihhmmhgvlhcuoehiughoshgthhesihguohhstghhrdhorhhgqeenucggtffrrghtth
 gvrhhnpedvudefveekheeugeeftddvveefgfduieefudeifefgleekheegleegjeejgeeg
 hfenucevlhhushhtvghrufhiiigvpedtnecurfgrrhgrmhepmhgrihhlfhhrohhmpehiug
 hoshgthhesihguohhstghhrdhorhhg
X-ME-Proxy: <xmx:i76uZFxqIG2qwemUGCW-J2nSTBvFw2_B5w5fNspoRSxXdhXQMYgK_w>
 <xmx:i76uZIS1b6f5dtWuAaroFdH4bHXWDClvLsXJIqTO_sJHA9XPAYZUag>
 <xmx:i76uZIZ9O_Zofa8wbqjZ6wRKztCSY_pYsGqdnhxqgWq-dHSI5ABUQA>
 <xmx:i76uZB_a1MT5vm3KvjP7klOS3aLJgrSuJS-38nrA-ig4dl5AJ0lxew>
Feedback-ID: i494840e7:Fastmail
Received: by mail.messagingengine.com (Postfix) with ESMTPA; Wed,
 12 Jul 2023 10:54:02 -0400 (EDT)
Date: Wed, 12 Jul 2023 17:53:59 +0300
From: Ido Schimmel <idosch@idosch.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <ZK6+hwL5p7OVy04X@shredder>
References: <20230711235415.92166-1-kuniyu@amazon.com>
 <ZK69NDM60+N0TTFh@shredder>
 <caf5bc87-0b5f-cd44-3c1c-5842549c8c6e@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <caf5bc87-0b5f-cd44-3c1c-5842549c8c6e@blackwall.org>
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Kuniyuki Iwashima <kuni1840@gmail.com>, Harry Coin <hcoin@quietfountain.com>,
 Eric Dumazet <edumazet@google.com>, Kuniyuki Iwashima <kuniyu@amazon.com>,
 "Eric W. Biederman" <ebiederm@xmission.com>, Roopa Prabhu <roopa@nvidia.com>,
 Jakub Kicinski <kuba@kernel.org>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH v1 net] bridge: Return an error when enabling
 STP in netns.
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

On Wed, Jul 12, 2023 at 05:52:09PM +0300, Nikolay Aleksandrov wrote:
> I'd prefer this approach to changing user-visible behaviour and potential regressions.
> Just change the warning message.

Yea, I noticed after sending that the message no longer fits :)
