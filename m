Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C34CD3F6C5E
	for <lists.bridge@lfdr.de>; Wed, 25 Aug 2021 01:52:15 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3AAA781CAD;
	Tue, 24 Aug 2021 23:52:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id u335uWZm7J5g; Tue, 24 Aug 2021 23:52:13 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 0367581CBA;
	Tue, 24 Aug 2021 23:52:13 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id AA317C0022;
	Tue, 24 Aug 2021 23:52:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3835DC000E
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 23:52:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 87CB781CAD
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 23:52:10 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hlyvMSFUmDSJ for <bridge@lists.linux-foundation.org>;
 Tue, 24 Aug 2021 23:52:10 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0B880819F6
 for <bridge@lists.linux-foundation.org>; Tue, 24 Aug 2021 23:52:09 +0000 (UTC)
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4E25361247;
 Tue, 24 Aug 2021 23:52:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1629849129;
 bh=Y+YdA+2CMsgqdmmpnQ4ORVcuiQP93MiMTcXGC05a0x8=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=P76SmD/+8qyjtGB124/Yo5+ywHRqyZ/spCL7h8+blkI86gF0FXQs/HUJJQKpLiLkB
 5RhnTM7hVGcPauQvKe9vziKnZGWmCYjdD+tuW4vpXJ92WHG54t5ZP/mnfUizL8CcQW
 QZdvcpTD9z/yHCQjEDJULv8FWPSkrLXW5tFYHv9FKSDoqnVRncqLZkux0n++Ubo+Qr
 VyG5U5nnrWbBdqppsHYfnIjMAlucgE2zy/ypEtF8GXHuP7mJvPIAjimAfYoIeIKh7a
 Y/F7kc3fbApgHP9tJuRaH+CL0EDx9WuVA7IlO894qEzaDHqNbVTjydrfD5xjE7R+GP
 6sMorJjKV8UPA==
Date: Tue, 24 Aug 2021 16:52:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <nikolay@nvidia.com>, Kangmin Park
 <l4stpr0gr4m@gmail.com>
Message-ID: <20210824165208.36944d77@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <d37ff915-6d94-2d22-9e93-46b374fc47d7@nvidia.com>
References: <20210823102118.17966-1-l4stpr0gr4m@gmail.com>
 <d37ff915-6d94-2d22-9e93-46b374fc47d7@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 "David S. Miller" <davem@davemloft.net>, linux-kernel@vger.kernel.org,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH v3 net-next] net: bridge: change return type of
 br_handle_ingress_vlan_tunnel
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

On Mon, 23 Aug 2021 13:25:20 +0300 Nikolay Aleksandrov wrote:
> On 23/08/2021 13:21, Kangmin Park wrote:
> > br_handle_ingress_vlan_tunnel() is only referenced in
> > br_handle_frame(). If br_handle_ingress_vlan_tunnel() is called and
> > return non-zero value, goto drop in br_handle_frame().
> > 
> > But, br_handle_ingress_vlan_tunnel() always return 0. So, the
> > routines that check the return value and goto drop has no meaning.
> > 
> > Therefore, change return type of br_handle_ingress_vlan_tunnel() to
> > void and remove if statement of br_handle_frame().
> > 
> > Signed-off-by: Kangmin Park <l4stpr0gr4m@gmail.com>
> 
> Looks good to me,
> Acked-by: Nikolay Aleksandrov <nikolay@nvidia.com>

Applied, thanks!
