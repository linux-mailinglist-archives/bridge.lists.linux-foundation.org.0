Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BF18686DDF
	for <lists.bridge@lfdr.de>; Wed,  1 Feb 2023 19:25:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 2363361044;
	Wed,  1 Feb 2023 18:25:58 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2363361044
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=jCsQxnDv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p2cvRL_fLvEE; Wed,  1 Feb 2023 18:25:57 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id B69C36102D;
	Wed,  1 Feb 2023 18:25:56 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B69C36102D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 5D5CEC007C;
	Wed,  1 Feb 2023 18:25:56 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 57C86C002B
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 18:25:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2C8FB4091C
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 18:25:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2C8FB4091C
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org
 header.a=rsa-sha256 header.s=k20201202 header.b=jCsQxnDv
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k8dbtg8SD5ey for <bridge@lists.linux-foundation.org>;
 Wed,  1 Feb 2023 18:25:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3168540739
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 3168540739
 for <bridge@lists.linux-foundation.org>; Wed,  1 Feb 2023 18:25:53 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by sin.source.kernel.org (Postfix) with ESMTPS id 36FE5CE250A;
 Wed,  1 Feb 2023 18:25:49 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 209E2C433D2;
 Wed,  1 Feb 2023 18:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1675275947;
 bh=+ysKNM/qX+vUFh7ls46wGK+gSEJSUWfzN8v7hHVOH0g=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=jCsQxnDvbkdPXr3c/jbkTbdPBO5OjzBe2P2sADtfmFOt5CYeqCV0kAMpICSZu+snk
 pY/Fuf5kE/fjnZ03HopADqksMCchKJIUYeWr1pknUFZo9o6zFRFtEZwxJdY8zmvllH
 wHCEoBHWha3YrGRDwbSBRhD3Q1Jb/yfjhZl2zjtR4iH4Wmd40cNlM/DjTzyvLdUJxg
 pGImQZJKDjSHPVcZa0Rdf4CKErmjcLk85YqMeE8Vxy9ZsDozcwMuix8/fLRggJ0HEQ
 DokvVRHaiFhpp2gYMYgJx2KADGULReG8jNq0OXvF3GEu4OeTkK/dy/3PORCENUbYm6
 tL9yZV45YVQ/A==
Date: Wed, 1 Feb 2023 10:25:46 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Petr Machata <petrm@nvidia.com>
Message-ID: <20230201102546.1d1722ae@kernel.org>
In-Reply-To: <cover.1675271084.git.petrm@nvidia.com>
References: <cover.1675271084.git.petrm@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, Nikolay Aleksandrov <razor@blackwall.org>,
 bridge@lists.linux-foundation.org, Ido
 Schimmel <idosch@nvidia.com>, Eric Dumazet <edumazet@google.com>,
 Roopa Prabhu <roopa@nvidia.com>, Paolo Abeni <pabeni@redhat.com>,
 "David S. Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net-next mlxsw v2 00/16] bridge: Limit number
 of MDB entries per port, port-vlan
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

On Wed, 1 Feb 2023 18:28:33 +0100 Petr Machata wrote:
> Subject: [PATCH net-next mlxsw v2 00/16] bridge: Limit number of MDB entries per port, port-vlan

What do you mean by "net-next mlxsw"?
Is there a tree called "net-next mlxsw" somewhere?
