Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8ADA94FC620
	for <lists.bridge@lfdr.de>; Mon, 11 Apr 2022 22:49:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A339408A2;
	Mon, 11 Apr 2022 20:49:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PKeAw_h7tZDB; Mon, 11 Apr 2022 20:49:04 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4A6EB409F7;
	Mon, 11 Apr 2022 20:49:03 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E4462C0084;
	Mon, 11 Apr 2022 20:49:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D3B24C002C
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:49:01 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id C1DAB60ACB
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:49:01 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bPfqzK_zaeN3 for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 20:49:00 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 881F060A79
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 20:49:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id 7216C6163D;
 Mon, 11 Apr 2022 20:48:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8E97DC385A6;
 Mon, 11 Apr 2022 20:48:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649710138;
 bh=ZUXCnHX/2dNJUBEIPyZc1r6h38PmYhHxuM8Lm5nUnWM=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=LfEgHhcRppEtRcrGtwpjo34Xm78CLpR9Efa0pYhXsSqyJebs8nsVxJ17GoAAw06K0
 OhpUoIbpWt81K6/mQsARsWHv3ayw0PXAE0auxnLGPmGEiUgwsmIUCxqD3kPV0FYfJs
 o+1RiVdx0FmUn2lQhz7cBFjeH66naCKr4nCtiRQXy3nFe1UTQUrp4JVsYQwT1vapox
 MMl1aGNpHawCh0zOuD00NpwF6agm6Dy6LJhsWVHTrvXLSpCv2bhhVJTfMfU5Fa8rBB
 PA4QcL1c+OShxo3RYdVhrtb2+7AbHtfZolQaEn+W5mS+q1d9TvzYmfLgEXITDsEhCO
 pH0bFxE5ZKQow==
Date: Mon, 11 Apr 2022 13:48:57 -0700
From: Jakub Kicinski <kuba@kernel.org>
To: Nikolay Aleksandrov <razor@blackwall.org>
Message-ID: <20220411134857.3cf12d36@kernel.org>
In-Reply-To: <3c25f674-d90b-7028-e591-e2248919cca9@blackwall.org>
References: <20220411172934.1813604-1-razor@blackwall.org>
 <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
 <c46ac324-34a2-ca0c-7c8c-35dc9c1aa0ab@blackwall.org>
 <92f578b7-347e-22c7-be83-cae4dce101f6@blackwall.org>
 <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
 <20220411124910.772dc7a0@kernel.org>
 <3c25f674-d90b-7028-e591-e2248919cca9@blackwall.org>
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

On Mon, 11 Apr 2022 23:34:23 +0300 Nikolay Aleksandrov wrote:
> On 11/04/2022 22:49, Jakub Kicinski wrote:
> >> all great points. My only reason to explore RTM_DELNEIGH is to see if we 
> >> can find a recipe to support similar bulk deletes of other objects 
> >> handled via rtm msgs in the future. Plus, it allows you to maintain 
> >> symmetry between flush requests and object delete notification msg types.
> >>
> >> Lets see if there are other opinions.  
> > 
> > I'd vote for reusing RTM_DELNEIGH, but that's purely based on  
> 
> OK, I'll look into the delneigh solution. Note that for backwards compatibility
> we won't be able to return proper error because rtnl_fdb_del will be called without
> a mac address, so for old kernels with new iproute2 fdb flush will return "invalid
> address" as an error.

If only we had policy dump for rtnl :) Another todo item, I guess.

> > intuition, I don't know this code. I'd also lean towards core
> > creating struct net_bridge_fdb_flush_desc rather than piping
> > raw netlink attrs thru. Lastly feels like fdb ops should find   
> 
> I don't think the struct can really be centralized, at least for the
> bridge case it contains private fields which parsed attributes get mapped to,
> specifically the ndm flags and state, and their maps are all mapped into
> bridge-private flags. Or did you mean pass the raw attribute vals through a
> struct instead of a nlattr table?

Yup, basically the policy is defined in the core, so the types are
known. We can extract the fields from the message there, even if 
the exact meaning of the fields gets established in the callback.

BTW setting NLA_REJECT policy is not required, NLA_REJECT is 0 so 
it will be set automatically per C standard.

> > a new home rather than ndos, but that's largely unrelated..  
> 
> I like separating the ops idea. I'll add that to my bridge todo list. :)
> 
> Thanks,
>  Nik
> 

