Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id CBF4B692DD1
	for <lists.bridge@lfdr.de>; Sat, 11 Feb 2023 04:21:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A92BC8236F;
	Sat, 11 Feb 2023 03:21:06 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A92BC8236F
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=kernel.org header.i=@kernel.org header.a=rsa-sha256 header.s=k20201202 header.b=gFNSGKYx
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ERS3d4YLKtyH; Sat, 11 Feb 2023 03:21:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 5877B82369;
	Sat, 11 Feb 2023 03:21:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5877B82369
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id E5D74C0078;
	Sat, 11 Feb 2023 03:21:04 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 2BC7EC002B
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:21:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E6F788236F
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:21:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E6F788236F
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ucpqaTnhsfvN for <bridge@lists.linux-foundation.org>;
 Sat, 11 Feb 2023 03:21:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org DE09C82369
Received: from dfw.source.kernel.org (dfw.source.kernel.org
 [IPv6:2604:1380:4641:c500::1])
 by smtp1.osuosl.org (Postfix) with ESMTPS id DE09C82369
 for <bridge@lists.linux-foundation.org>; Sat, 11 Feb 2023 03:21:00 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by dfw.source.kernel.org (Postfix) with ESMTPS id CE1F161EB4;
 Sat, 11 Feb 2023 03:20:59 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8BE27C433EF;
 Sat, 11 Feb 2023 03:20:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1676085659;
 bh=7jVs7Tz/4ecjvj6H4SeqnLEwHHJGQdIi3lJzgRcYaIE=;
 h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
 b=gFNSGKYxxeQD30K706H0NPsLlBwC48s6RSk78RUT5Sfs4pXH4YB3MGISFmqVIkVEP
 RuQsRLUxSI+oyPI6sJuOepZPHCR/BlXq5Td+sHY8qKhaDLrpCrmMCYLTnAeKnAOqN1
 NpTQJm/bdKKDDPNcJrP2ZxtV1qmBsctS5gXnArmetVtX08NIaHhYD/fy4ekBBeo7b/
 QtJCcrYS4AgembfTar8YEgYKngSOVh4aYGV3otVRDeuBJRBtnt5QWxk5jyBnoPh+NX
 nObYCwb81wpJBy8E+fiy3/dojGdvCvJvyXDPS1AKoGVFhkcveXwxdgyufLSIs/x5BT
 SKDCZxoMUeAmA==
Date: Fri, 10 Feb 2023 19:20:57 -0800
From: Jakub Kicinski <kuba@kernel.org>
To: Ido Schimmel <idosch@nvidia.com>
Message-ID: <20230210192057.4927b002@kernel.org>
In-Reply-To: <20230209071852.613102-4-idosch@nvidia.com>
References: <20230209071852.613102-1-idosch@nvidia.com>
 <20230209071852.613102-4-idosch@nvidia.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, netdev@vger.kernel.org, razor@blackwall.org,
 bridge@lists.linux-foundation.org, edumazet@google.com, mlxsw@nvidia.com,
 roopa@nvidia.com, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 3/4] bridge: mcast: Move validation to
	a policy
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

On Thu,  9 Feb 2023 09:18:51 +0200 Ido Schimmel wrote:
> +	if (nla_len(attr) != sizeof(struct br_mdb_entry)) {
> +		NL_SET_ERR_MSG_MOD(extack, "Invalid MDBA_SET_ENTRY attribute length");
> +		return -EINVAL;

Well, you're just moving it, but NL_SET_ERR_MSG_ATTR() would be better.
We shouldn't be adding _MOD() in the core implementation of the family.
