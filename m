Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 15E2545B303
	for <lists.bridge@lfdr.de>; Wed, 24 Nov 2021 05:13:36 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 41F7060638;
	Wed, 24 Nov 2021 04:13:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2CRdcCr_3xJ2; Wed, 24 Nov 2021 04:13:33 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 0BF0660676;
	Wed, 24 Nov 2021 04:13:32 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B418BC0037;
	Wed, 24 Nov 2021 04:13:32 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 7CC3FC0012
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 04:13:30 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 63AEE80B58
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 04:13:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bCwvz__SZPAu for <bridge@lists.linux-foundation.org>;
 Wed, 24 Nov 2021 04:13:29 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5F44C80B36
 for <bridge@lists.linux-foundation.org>; Wed, 24 Nov 2021 04:13:29 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id B0AAF60FA0;
 Wed, 24 Nov 2021 04:13:28 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1637727209;
 bh=eqz/QGVARcSmjPuurQbLH3s0ioMZvO5xAzsQ2JZIEug=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Zr1KYde+bXt/wzHlv9ghGFD1LXOxIKowsTqcoPRrqZOjRp5b2BfkscMtvb93zxxDR
 xSx36iIyk1sf2BAA6hL5b7DSbJBj3NnUuC9sznYDsWDqXWYPshnSZFvbxowfglWG4P
 445V5N5G5Lie7FN2RJk5V0j2C+7dDMWKg0oLKt0QXffYIUw/yo8xtROIXUhECkVkis
 G+pWXayrKQwGUGW9foY7vi9VBDWClh1gDcbfe1Dsts2Cl2uHd6FLvQXHlZSHPYjfg1
 2+8fBv/0efCwfOl5lvwwfe7kvSu92iqS0BMPS7lM3LWglAghmuzosXB5/1I3wgsz7B
 POZokdFnNzWSA==
Date: Tue, 23 Nov 2021 20:13:27 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>
Message-ID: <20211123201327.3689203b@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <f98615d9-a129-d0b0-e444-cb649c14d7ce@nvidia.com>
References: <20211119020642.108397-1-bernard@vivo.com>
 <YZtrM3Ukz7rKfNLN@shredder>
 <f98615d9-a129-d0b0-e444-cb649c14d7ce@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, Bernard Zhao <bernard@vivo.com>,
 Ido Schimmel <idosch@idosch.org>, Roopa Prabhu <roopa@nvidia.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH] net/bridge: replace simple_strtoul to kstrtol
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

On Mon, 22 Nov 2021 12:17:39 +0200 Nikolay Aleksandrov wrote:
> > # ip link add name br0 type bridge vlan_filtering 1
> > # echo "0x88a8" > /sys/class/net/br0/bridge/vlan_protocol 
> > bash: echo: write error: Invalid argument
> 
> Good catch, Bernard please send a revert. Thanks.

Doesn't look like he did, would you mind taking over?
