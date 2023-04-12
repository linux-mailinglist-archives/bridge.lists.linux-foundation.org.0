Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id B10CE6DE918
	for <lists.bridge@lfdr.de>; Wed, 12 Apr 2023 03:50:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A1BB940338;
	Wed, 12 Apr 2023 01:50:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A1BB940338
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=MJJOzLay
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Y1ZHUiRBbbkJ; Wed, 12 Apr 2023 01:50:00 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 2B1184055D;
	Wed, 12 Apr 2023 01:49:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2B1184055D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3270C008C;
	Wed, 12 Apr 2023 01:49:58 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id ACD34C002A
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 01:49:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 746AD60E11
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 01:49:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 746AD60E11
Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=MJJOzLay
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0VHgl1EbVWZE for <bridge@lists.linux-foundation.org>;
 Wed, 12 Apr 2023 01:49:55 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2BE860A79
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id C2BE860A79
 for <bridge@lists.linux-foundation.org>; Wed, 12 Apr 2023 01:49:55 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id B618F6247D;
 Wed, 12 Apr 2023 01:49:54 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 96C00C433D2;
 Wed, 12 Apr 2023 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1681264194;
 bh=aKG+1zNkh2FK/EvUu9fFjD33/8YFSQKUso17chrT7tM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=MJJOzLaykGHYDe6d3WiKIwp66YlU3rDUomUj46ePjS+In4YTtE8XBrSzn7Xdg7jaq
 22CL5P9d8jx3ZDMk5Gd8II+kPUWnmG8cI/fVQzcprfpghMKvI/dDHRK3qC71nQSlKV
 wowvNJemYSPgXEqScRHsUZh/c7i/xhgKVlEN+WmoR+xtM7lTcwDvKaoMvr4AmNrWt3
 j3y+ewmrxwyJU5w8/YHWSbznXvc1e+/lpSfQG4WwgPeKeH9Aqs2B1I3H7emhzX2De8
 UPvPpr04kQyBHqo+EOtS/mm85gU7NNuMVRtEZJq4lt+yhQSeyU5TnskThUmaBtq+o9
 rpOKS6ogeLaKw==
Date: Tue, 11 Apr 2023 18:49:52 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: xu xin <xu.xin.sc@gmail.com>
Message-ID: <20230411184952.1657b8c9@kernel.org>
In-Reply-To: <20230412013310.174561-1-xu.xin16@zte.com.cn>
References: <20230407200319.72fd763f@kernel.org>
 <20230412013310.174561-1-xu.xin16@zte.com.cn>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, linux-kernel@vger.kernel.org,
 yang.yang29@zte.com.cn, edumazet@google.com, zhang.yunkai@zte.com.cn,
 xu.xin16@zte.com.cn, jiang.xuexin@zte.com.cn, roopa@nvidia.com,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next] net/bridge: add drop reasons for
 bridge forwarding
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

On Wed, 12 Apr 2023 09:33:10 +0800 xu xin wrote:
> >You can return the reason from this function. That's the whole point of
> >SKB_NOT_DROPPED_YET existing and being equal to 0.
> 
> If returning the reasons, then the funtion will have to be renamed because
> 'should_deliever()' is expected to return a non-zero value  when it's ok to
> deliever. I don't want to change the name here, and it's better to keep its
> name and use the pointer to store the reasons.

Sure. You have to touch all callers, anyway, you can as well adjust 
the name.
