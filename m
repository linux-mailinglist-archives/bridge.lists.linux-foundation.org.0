Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0D93B4FC6CB
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 23:35:17 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 947B04086C;
	Mon, 11 Apr 2022 21:35:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZzIuX5MZmMjF; Mon, 11 Apr 2022 21:35:14 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0953C4087B;
	Mon, 11 Apr 2022 21:35:12 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id C3244C0084;
	Mon, 11 Apr 2022 21:35:12 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AB372C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 21:35:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 840AB60E43
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 21:35:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2hVY9isf0mVU for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 21:35:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org [139.178.84.217])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E639060BC3
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 21:35:10 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 3434C616F7;
 Mon, 11 Apr 2022 21:35:10 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 5BAF3C385A3;
 Mon, 11 Apr 2022 21:35:09 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649712909;
 bh=uzR0CfSeFc1uxi4hWTAJ9S7h44rksyP8EXFSTLFItig=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=Z/gDK6zxT/FGrti/KC8BzNEPu8XW9C50vyFvwyxn+MDcWmEJkKS93H1kbajaHXBcH
 WqIdTJvtymyykeNd5+6PrTq3L+K1Qm3wvYQnZ1QTH7l7upjteH8xsRtThjtfRVoTFS
 o5xjjYh3okAj+U4qvrbVdDytxX+M3b8WmaYFIolHRScQd08abmS9gFuM6l4lwXaZ67
 sI9dOLEddxsbhAoUaGBsPLGk+wQKvgXFbiOCMmaoplWays0b1jjgPocXi7S+SczkYk
 YMg1wfeeNTith10QE1lxF7NoKCehORLiYB+tX2eteqEtbg746lluEskw6TiF3C5k4t
 4xjTj9HjbD1Fw==
Date: Mon, 11 Apr 2022 14:35:08 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220411143508.0592f60e@kernel.org>
In-Reply-To: <d47fe5e3-2820-196d-b375-2bf98cd784d3@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
 <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
 <c46ac324-34a2-ca0c-7c8c-35dc9c1aa0ab@blackwall.org>
 <92f578b7-347e-22c7-be83-cae4dce101f6@blackwall.org>
 <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
 <20220411124910.772dc7a0@kernel.org>
 <3c25f674-d90b-7028-e591-e2248919cca9@blackwall.org>
 <20220411134857.3cf12d36@kernel.org>
 <d47fe5e3-2820-196d-b375-2bf98cd784d3@blackwall.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: idosch@idosch.org, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org, davem@davemloft.net,
 Roopa Prabhu <roopa@nvidia.com>
Subject: Re: [Bridge] [PATCH net-next v2 0/8] net: bridge: add flush
 filtering support
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

On Tue, 12 Apr 2022 00:17:14 +0300 Nikolay Aleksandrov wrote:
> > Yup, basically the policy is defined in the core, so the types are
> > known. We can extract the fields from the message there, even if 
> > the exact meaning of the fields gets established in the callback.
> 
> That sounds nice, but there are a few catches, f.e. some ndo_fdb implementations
> check if attributes were set, i.e. they can also interpret 0, so it will require
> additional state (either special value, bitfield or some other way of telling them
> it was actually present but 0).
> Anyway I think that is orthogonal to adding the flush support, it's a nice cleanup but can
> be done separately because it will have to be done for all ndo_fdb callbacks and I
> suspect the change will grow considerably.
> OTOH the flush implementation via delneigh doesn't require a new ndo_fdb call way,
> would you mind if I finish that up without the struct conversion?

Not terribly, go ahead.
