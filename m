Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id F146C502761
	for <lists.bridge@lfdr.de>; Fri, 15 Apr 2022 11:28:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A2CD34199F;
	Fri, 15 Apr 2022 09:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id qBD5FrxA3SRf; Fri, 15 Apr 2022 09:28:41 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id D3A50419B8;
	Fri, 15 Apr 2022 09:28:40 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D44FCC0089;
	Fri, 15 Apr 2022 09:28:39 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id B3E56C0033
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 23:04:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9388E4091D
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 23:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Rdk-VPLEnXWG for <bridge@lists.linux-foundation.org>;
 Mon, 11 Apr 2022 23:04:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B7E3940919
 for <bridge@lists.linux-foundation.org>; Mon, 11 Apr 2022 23:04:02 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id E5C18B816FB;
 Mon, 11 Apr 2022 23:04:00 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 432FAC385A3;
 Mon, 11 Apr 2022 23:03:59 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649718239;
 bh=1zZ/sCx59Z9T/RI6aLTGewKRcoeFMl0lBMQdD/tZeFc=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=WRs0zPwz6o3hPE9brPkPgJKhOJ08AQEMaDISbOYmvqYQ2uCURJ9abCdB7WlBx1KMH
 f/AMgVJC6rudqomo0+H5Hq6btSOxez3Fo9AcUjPdVX0rkfHMXKq0jGv9TbeJjcKGiC
 EDWzPPk/TN60o3VgrRmqI1zJXBI1+EkOzWSpsY4LMoj3wQweCUXF68RAqjr/05YLSY
 137WI9V7r9oqOlZcz78qYr2RhuquDuw/CUaE5Dhm5IvMkKklWFa47DDrTREFsKO/PE
 pZxKm7uW/j/8FlY/1mhiYNVtQCeGKKPIobFZpo1qxI1CEYqdAuY+1wfiUQHKzSvHCr
 kh2wToR1JBm9g==
Date: Mon, 11 Apr 2022 17:03:56 -0600
From: David Ahern <dsahern@kernel.org>
To: Roopa Prabhu <roopa@nvidia.com>
Message-ID: <20220411230356.GB8838@u2004-local>
References: <20220411172934.1813604-1-razor@blackwall.org>
 <0d08b6ce-53bb-bffa-4f04-ede9bfc8ab63@nvidia.com>
 <c46ac324-34a2-ca0c-7c8c-35dc9c1aa0ab@blackwall.org>
 <92f578b7-347e-22c7-be83-cae4dce101f6@blackwall.org>
 <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ca093c4f-d99c-d885-16cb-240b0ce4d8d8@nvidia.com>
X-Mailman-Approved-At: Fri, 15 Apr 2022 09:28:38 +0000
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, idosch@idosch.org, kuba@kernel.org,
 davem@davemloft.net
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

On Mon, Apr 11, 2022 at 12:22:24PM -0700, Roopa Prabhu wrote:
> all great points. My only reason to explore RTM_DELNEIGH is to see if we can
> find a recipe to support similar bulk deletes of other objects handled via
> rtm msgs in the future. Plus, it allows you to maintain symmetry between
> flush requests and object delete notification msg types.
> 
> Lets see if there are other opinions.

I guess I should have read the entire thread. :-) (still getting used to
the new lei + mutt workflow). This was my thought - bulk delete is going
to be a common need, and it is really just a mass delete. The GET
message types are used for dumps and some allow attributes on the
request as a means of coarse grain filtering. I think we should try
something similar here for the flush case.
