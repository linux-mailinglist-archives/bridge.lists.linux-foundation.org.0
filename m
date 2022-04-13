Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5F617502763
	for <lists.bridge@lfdr.de>; Fri, 15 Apr 2022 11:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7F096610A7;
	Fri, 15 Apr 2022 09:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WMfL1ZQmWqWb; Fri, 15 Apr 2022 09:28:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 31A6C610A0;
	Fri, 15 Apr 2022 09:28:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 0C376C0092;
	Fri, 15 Apr 2022 09:28:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id AD213C002C
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 02:04:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9529560E27
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 02:04:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id k3g7yjBdjE6f for <bridge@lists.linux-foundation.org>;
 Wed, 13 Apr 2022 02:04:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id E153B60D70
 for <bridge@lists.linux-foundation.org>; Wed, 13 Apr 2022 02:04:45 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 2175FB818C6;
 Wed, 13 Apr 2022 02:04:43 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 74592C385A8;
 Wed, 13 Apr 2022 02:04:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649815481;
 bh=Vu+KgFouk8ANRuvIxUVioi8TD5dzKVTLxlfZyOyStr0=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=oMWCA75tVI/a3DU0b4D8ROEQAnmjNK/m1j0epJam9eyCkHPdJfBkq+VniG4iML3kg
 BoKVDAljU/Pe/GNNEGd7BPLrb/C+LIRLdpRAzrH4sbabmkuqPNXhO+afe4r+yvBs3S
 GisDnceTSgUH/esU7j3XaZR9P6Z7nTI8itdEnWBJCUyAqdcvNQ2qxSM0vkwe7nxH2B
 eQN8f5KXRCVISg6D9yAup2eeOJVULPDOuk3Kl0zePcli439cSOdpi7JbrkLXhWlXJG
 XmxnrIxIQ06FKPqMiooKCqQvx0S3JaJFQnHjZbkG3RD+oIIVB/ZYyfhDFK1h+6OLMZ
 Q5fNsgwfKJhdQ==
Message-ID: <c418e95e-440e-0502-58f2-63179f370a98@kernel.org>
Date: Tue, 12 Apr 2022 20:04:40 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, netdev@vger.kernel.org
References: <20220412132245.2148794-1-razor@blackwall.org>
From: David Ahern <dsahern@kernel.org>
In-Reply-To: <20220412132245.2148794-1-razor@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 15 Apr 2022 09:28:38 +0000
Cc: idosch@idosch.org, bridge@lists.linux-foundation.org, davem@davemloft.net,
 kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v3 0/8] net: bridge: add flush
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

On 4/12/22 7:22 AM, Nikolay Aleksandrov wrote:
> Hi,
> This patch-set adds support to specify filtering conditions for a bulk
> delete (flush) operation. This version uses a new nlmsghdr delete flag
> called NLM_F_BULK in combination with a new ndo_fdb_del_bulk op which is
> used to signal that the driver supports bulk deletes (that avoids
> pushing common mac address checks to ndo_fdb_del implementations and
> also has a different prototype and parsed attribute expectations, more
> info in patch 03). The new delete flag can be used for any RTM_DEL*
> type, implementations just need to be careful with older kernels which
> are doing non-strict attribute parses. Here I use the fact that mac

overall it looks fine to me. The rollout of BULK delete for other
commands will be slow so we need a way to reject the BULK flag if the
handler does not support it. One thought is to add another flag to
rtnl_link_flags (e.g., RTNL_FLAG_BULK_DEL_SUPPORTED) and pass that flag
in for handlers that handle bulk delete and reject it for others in core
rtnetlink code.
