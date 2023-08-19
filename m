Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 24AB8781890
	for <lists.bridge@lfdr.de>; Sat, 19 Aug 2023 11:25:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 95D224060B;
	Sat, 19 Aug 2023 09:25:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 95D224060B
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=VRR5HDmZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id iMHBsIZZGqKd; Sat, 19 Aug 2023 09:25:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 168EC404B4;
	Sat, 19 Aug 2023 09:25:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 168EC404B4
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 8BA7FC008C;
	Sat, 19 Aug 2023 09:25:22 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id D6E1AC0032
 for <bridge@lists.linux-foundation.org>; Sat, 19 Aug 2023 09:25:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A464A82C9C
 for <bridge@lists.linux-foundation.org>; Sat, 19 Aug 2023 09:25:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A464A82C9C
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=VRR5HDmZ
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id iFzotkKyxBns for <bridge@lists.linux-foundation.org>;
 Sat, 19 Aug 2023 09:25:19 +0000 (UTC)
Received: from mail-ed1-x533.google.com (mail-ed1-x533.google.com
 [IPv6:2a00:1450:4864:20::533])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9D50F82BF4
 for <bridge@lists.linux-foundation.org>; Sat, 19 Aug 2023 09:25:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9D50F82BF4
Received: by mail-ed1-x533.google.com with SMTP id
 4fb4d7f45d1cf-5230a22cfd1so2168859a12.1
 for <bridge@lists.linux-foundation.org>; Sat, 19 Aug 2023 02:25:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1692437117; x=1693041917;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=qp+p88acw4RYdUK5z2c5JXRcScXCLt4N2yRM056qyZI=;
 b=VRR5HDmZ87vfAsOdbfbSMy3DH2tEGsp2n37sFPGHgHf6WJE6uIG4yAWcDCPiimPf9Y
 g5xXFg7TPYdKcb5jl7DplAamSO61UWaTu/PSgQ4Oc2VdSKqhz5y2imgL1SGTUGce7DhW
 YkIld5h6JkxGQ4xBy1o2SvHqcy982wGk0ZNtngsGuIVTuMB1IhHThiyKJ8YI4Fw7NuxC
 fPhsJzKOHsmaIq+vUlkq7v+ZjfFG+h3uvMucYasHduWlSim2hBKkjMQ96TYQvhUFxhvK
 8TzlZGlFBzKsohUfKrApwHBiQoo7Mh+s9wU2IPUg9P5FV8yqsBs/mPXujg2UV4whPYLv
 PgsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692437117; x=1693041917;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=qp+p88acw4RYdUK5z2c5JXRcScXCLt4N2yRM056qyZI=;
 b=HjLH2YzG+RRlR43IZ6NDLAMdJoe6h65ZHQKMWkSFGqbL6Hdg6gaIkIdcoRxokTcYUc
 vFmnnrBVYak7Qa1ZH1+VEoA51Zpcs13jQRR0dbIMZlK6yIRoC6RkGYpLgl9EvHF8scAn
 Fs+KbaLPgc7nGY4W8nj26CkznTN+ePB786k35i/jSiiIXITaW2lRtDI26CIpufySQC4U
 W9X3T11HC6GRsZ/BmKzJY//C51W3HI6V4B1VM945WYXfLKwtpKZoutHeCzDY6CT6EEQT
 3CbduYliQyYNBO86VBo3gchfw4Nlq/wRQE79zOQSADGnoxUEYkS2RUjLsrUdMlgyZ9fe
 I4xw==
X-Gm-Message-State: AOJu0Yy9UsCBQ8cimPtxlWjZkKAceyD4iK9J4JWaziClUCCHTBDBsAX1
 JHJAVfNeK3z8kAv4GRsGo+cA3w==
X-Google-Smtp-Source: AGHT+IEXf4Cdoa+8NauX37PHYq+yLXIhUdj4BWAkAzLxSuxit4Crlmzvd6GPituu3hkr9P+D2ExGow==
X-Received: by 2002:aa7:db4a:0:b0:525:501d:9bd3 with SMTP id
 n10-20020aa7db4a000000b00525501d9bd3mr992991edt.32.1692437117544; 
 Sat, 19 Aug 2023 02:25:17 -0700 (PDT)
Received: from [192.168.1.2] (handbookness.lineup.volia.net. [93.73.104.44])
 by smtp.gmail.com with ESMTPSA id
 w9-20020a056402070900b00525683f9b2fsm2214842edx.5.2023.08.19.02.25.16
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sat, 19 Aug 2023 02:25:17 -0700 (PDT)
Message-ID: <df28eac7-ee6e-431c-acee-36a1c29a4ae0@blackwall.org>
Date: Sat, 19 Aug 2023 12:25:15 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ziqi Zhao <astrajoan@yahoo.com>, arnd@arndb.de,
 bridge@lists.linux-foundation.org, davem@davemloft.net, edumazet@google.com,
 f.fainelli@gmail.com, ivan.orlov0322@gmail.com, keescook@chromium.org,
 kuba@kernel.org, hkallweit1@gmail.com, mudongliangabcd@gmail.com,
 nikolay@nvidia.com, pabeni@redhat.com, roopa@nvidia.com,
 skhan@linuxfoundation.org,
 syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com,
 vladimir.oltean@nxp.com
References: <00000000000051197705fdbc7e54@google.com>
 <20230819081057.330728-1-astrajoan@yahoo.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230819081057.330728-1-astrajoan@yahoo.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, syzkaller-bugs@googlegroups.com,
 linux-kernel@vger.kernel.org
Subject: Re: [Bridge] [PATCH] net: bridge: Fix refcnt issues in dev_ioctl
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

Hi Ziqi,
On 8/19/23 11:10, Ziqi Zhao wrote:
> In the bug reported by Syzbot, certain bridge devices would have a
> leaked reference created by race conditions in dev_ioctl, specifically,
> under SIOCBRADDIF or SIOCBRDELIF operations. The reference leak would

How would it leak a reference, could you elaborate?
The reference is always taken and always released after the call.

> be shown in the periodic unregister_netdevice call, which throws a
> warning and cause Syzbot to report a crash. Upon inspection of the

If you reproduced it, is the device later removed or is it really stuck?

> logic in dev_ioctl, it seems the reference was introduced to ensure
> proper access to the bridge device after rtnl_unlock. and the latter
> function is necessary to maintain the following lock order in any
> bridge related ioctl calls:
> 
> 1) br_ioctl_mutex => 2) rtnl_lock
> 
> Conceptually, though, br_ioctl_mutex could be considered more specific
> than rtnl_lock given their usages, hence swapping their order would be
> a reasonable proposal. This patch changes all related call sites to
> maintain the reversed order of the two locks:
> 
> 1) rtnl_lock => 2) br_ioctl_mutex
> 
> By doing so, the extra reference introduced in dev_ioctl is no longer
> needed, and hence the reference leak bug is now resolved.

IIRC there was no bug, it was a false-positive. The reference is held a 
bit longer but then released, so the device is deleted later.
I might be remembering wrong, but I think I briefly looked into this 
when it was reported. If that's not the case I'd be interested to see
a new report/trace because the bug might be somewhere else.

> 
> Reported-by: syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com
> Fixes: ad2f99aedf8f ("net: bridge: move bridge ioctls out of .ndo_do_ioctl")
> Signed-off-by: Ziqi Zhao <astrajoan@yahoo.com>
> ---
>   net/bridge/br_ioctl.c | 4 ----
>   net/core/dev_ioctl.c  | 8 +-------
>   net/socket.c          | 2 ++
>   3 files changed, 3 insertions(+), 11 deletions(-)
> 

Thanks,
  Nik


