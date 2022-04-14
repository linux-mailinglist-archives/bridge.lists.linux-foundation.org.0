Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BF1502762
	for <lists.bridge@lfdr.de>; Fri, 15 Apr 2022 11:28:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 08DA440BB4;
	Fri, 15 Apr 2022 09:28:43 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BKNSohl4zKB6; Fri, 15 Apr 2022 09:28:42 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 91E4D40BAF;
	Fri, 15 Apr 2022 09:28:41 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 39491C0095;
	Fri, 15 Apr 2022 09:28:40 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 24845C002C
 for <bridge@lists.linux-foundation.org>; Thu, 14 Apr 2022 00:42:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 176716112C
 for <bridge@lists.linux-foundation.org>; Thu, 14 Apr 2022 00:42:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=kernel.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id GGNxwoir4FSK for <bridge@lists.linux-foundation.org>;
 Thu, 14 Apr 2022 00:42:30 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from ams.source.kernel.org (ams.source.kernel.org [145.40.68.75])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D66AF60B2A
 for <bridge@lists.linux-foundation.org>; Thu, 14 Apr 2022 00:42:29 +0000 (UTC)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by ams.source.kernel.org (Postfix) with ESMTPS id 6FC51B818F1;
 Thu, 14 Apr 2022 00:42:27 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 8C65BC385A6;
 Thu, 14 Apr 2022 00:42:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=k20201202; t=1649896946;
 bh=8lYIYTMcMRpADQYVwwEbTQ7w7xq7gDAawhUe2eXrNFo=;
 h=Date:Subject:To:Cc:References:From:In-Reply-To:From;
 b=V9J3P/MYXS5MyBbY7MTCPsrfE3nENIideBDr+z1NaP1bcBCdbI3rgl5AU0FWbmsLZ
 62EnjksFq+LNx4NUgcKoemXlmZv8EmHHOxnTPP1I+62tLeAZw//HUYCtw8T9CFBHIe
 Xjzn4NWjVlQ4eY0G9WRzvMmR17iTAnF78k+Mwr1KzmT5JQIND3vvBajDHYMbRFLwmO
 lNodux6lTYtTYALdmZYoqdOA1g4qIOqgxJMAOLVNXYymjK3WSLJapuNHblHxwjOcR9
 ECdhgOhZnf68tHU/+aHapN3TtclDep2M8NkIjdAdN/7R/L6o7n4lRkO9p0kl1zHvE0
 ztYWtas8r600Q==
Message-ID: <97774474-65a3-fa45-e0b9-8db6c748da28@kernel.org>
Date: Wed, 13 Apr 2022 18:42:24 -0600
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.15; rv:91.0)
 Gecko/20100101 Thunderbird/91.8.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>, Ido Schimmel <idosch@idosch.org>
References: <20220413105202.2616106-1-razor@blackwall.org>
 <20220413105202.2616106-6-razor@blackwall.org> <Yla8wj7khYxpwxan@shredder>
 <e43b5033-d350-fc81-71be-de3e1053c72a@blackwall.org>
From: David Ahern <dsahern@kernel.org>
In-Reply-To: <e43b5033-d350-fc81-71be-de3e1053c72a@blackwall.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Mailman-Approved-At: Fri, 15 Apr 2022 09:28:38 +0000
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 davem@davemloft.net, kuba@kernel.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v4 05/12] net: rtnetlink: add bulk
 delete support flag
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

On 4/13/22 6:21 AM, Nikolay Aleksandrov wrote:
>> If a buggy user space application is sending messages with NLM_F_BULK
>> set (unintentionally), will it break on newer kernel? I couldn't find
>> where the kernel was validating that reserved flags are not used (I
>> suspect it doesn't).
> 
> Correct, it doesn't.
> 
>>
>> Assuming the above is correct and of interest, maybe just emit a warning
>> via extack and drop the goto? Alternatively, we can see if anyone
>> complains which might never happen
>>
> 
> TBH I prefer to error out on an unsupported flag, but I get the problem. These
> weren't validated before and we start checking now. The problem is that we'll
> return an extack without an error, but the delete might also remove something.
> Hrm.. perhaps we can rephrase the error in that case (since it becomes a warning
> in iproute2 terms):
>  "NLM_F_BULK flag is set but bulk delete operation is not supported"
> So it will warn the user it has an unsupported flag.
> 
> WDYT ?
> 
> IMO we should bite the bullet and keep the error though. :)
> 

I agree. The check across the board for BULK flag on any DELETE requests
should tell us pretty quick if someone is setting that flag when it
should not be.
