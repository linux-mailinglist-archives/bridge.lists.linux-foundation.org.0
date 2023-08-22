Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8F5C783E0E
	for <lists.bridge@lfdr.de>; Tue, 22 Aug 2023 12:40:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 997A26070A;
	Tue, 22 Aug 2023 10:40:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 997A26070A
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256 header.s=20221208 header.b=vRqJyMPw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id oa4YTdIvRiqZ; Tue, 22 Aug 2023 10:40:54 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 1E33C60E0D;
	Tue, 22 Aug 2023 10:40:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 1E33C60E0D
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A7450C008C;
	Tue, 22 Aug 2023 10:40:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id DBC25C0032
 for <bridge@lists.linux-foundation.org>; Tue, 22 Aug 2023 10:40:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C12B5415D9
 for <bridge@lists.linux-foundation.org>; Tue, 22 Aug 2023 10:40:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C12B5415D9
Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20221208.gappssmtp.com
 header.i=@blackwall-org.20221208.gappssmtp.com header.a=rsa-sha256
 header.s=20221208 header.b=vRqJyMPw
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id FBkr_vAzC-5u for <bridge@lists.linux-foundation.org>;
 Tue, 22 Aug 2023 10:40:49 +0000 (UTC)
Received: from mail-ed1-x531.google.com (mail-ed1-x531.google.com
 [IPv6:2a00:1450:4864:20::531])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29F2E415A6
 for <bridge@lists.linux-foundation.org>; Tue, 22 Aug 2023 10:40:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29F2E415A6
Received: by mail-ed1-x531.google.com with SMTP id
 4fb4d7f45d1cf-51a52a7d859so11087063a12.0
 for <bridge@lists.linux-foundation.org>; Tue, 22 Aug 2023 03:40:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20221208.gappssmtp.com; s=20221208; t=1692700847; x=1693305647;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=EtkRY1jmYwwZKGUT6GKi2lYbs/rnolItz7yunjkfTUE=;
 b=vRqJyMPwpBjcl3tf+EYFWQTPiMQZEvD7T6FvKLjABWSOeGSosWuDdjxcvTGKHDmeAt
 Q1oYCxFJBgQBK8pxgazV1n7AlbQ1AP5g3j9REhoJoT2vD0iLM52qYXTZMFj10/vD4MVe
 HY4AQzOMvAjZR/nE8MWjpx72nHJzAxy0Oa2XBOqKRU7XjxmcYfkuHwzUxbv0k/f61RhQ
 r34ZEJnvFi0OwC2hxjTOLj8HiCVdsfe2HHB1xeOzshBeiD7wQRZED/mIGbs6rbHQAMhz
 AHVFSbytRMvaaC45Hr+PGVuLlEPLzd2/7a/9EzHagqYjb3IxPxAMsOn+sIf+pkL9C3V4
 ljBg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20221208; t=1692700847; x=1693305647;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=EtkRY1jmYwwZKGUT6GKi2lYbs/rnolItz7yunjkfTUE=;
 b=DRs4Z1DY11LwIp/jgbnvWSUNNp2ygdnn6Dig2EnuDN77q/vORjlUL8+IFNziwSokbj
 9JUHG7UZUQVMPz/nuZ9WXA3mD3hQzNEr512gegToC8hlOQ8fuy0YBn+e5iuKAuqru3pG
 eMoGZtTT2aqK5iOjk7c+MADp6zk8xjUb9f9ytN9gtF1YfqznP/TBZxcTQsXxcWV+2dhI
 wPXAnZbvxQdaDAM7sbwFizETd7aPMw0ENBLhx0kZCKxi1CTAQaj3b0WlRjMV+8iGtjO+
 d1VPUkVC0bo176JE4+hZ3koaoyC6x/ztQ8ZSd/uSGn+Nitz07DcWZQBHCPW27X2PPrmd
 XErA==
X-Gm-Message-State: AOJu0YzMod1/e8Li9p09kMhCAhGwcox3Xf2Y3073ID0Ht3pPAZmmPgvB
 7poBE6PTlzKt16lJ0ZMg2iRZHA==
X-Google-Smtp-Source: AGHT+IGejXQyuL6OmLUot7fp4FTAfapXJLUoNfcjAlSAoXH1hauFGBP5F41yvVrVMpRMtc6ydrKTug==
X-Received: by 2002:a17:907:7da3:b0:982:a022:a540 with SMTP id
 oz35-20020a1709077da300b00982a022a540mr10182356ejc.11.1692700847182; 
 Tue, 22 Aug 2023 03:40:47 -0700 (PDT)
Received: from [192.168.1.2] (handbookness.lineup.volia.net. [93.73.104.44])
 by smtp.gmail.com with ESMTPSA id
 n12-20020a170906688c00b00982be08a9besm8162023ejr.172.2023.08.22.03.40.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 22 Aug 2023 03:40:46 -0700 (PDT)
Message-ID: <c81340d8-25f3-4014-b881-5afe01b56f6b@blackwall.org>
Date: Tue, 22 Aug 2023 13:40:45 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ziqi Zhao <astrajoan@yahoo.com>
References: <00000000000051197705fdbc7e54@google.com>
 <20230819081057.330728-1-astrajoan@yahoo.com>
 <df28eac7-ee6e-431c-acee-36a1c29a4ae0@blackwall.org>
 <20230819225048.dxxzv47fo64g24qx@Astras-Ubuntu>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230819225048.dxxzv47fo64g24qx@Astras-Ubuntu>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: f.fainelli@gmail.com, ivan.orlov0322@gmail.com, keescook@chromium.org,
 arnd@arndb.de, vladimir.oltean@nxp.com, bridge@lists.linux-foundation.org,
 syzkaller-bugs@googlegroups.com, mudongliangabcd@gmail.com,
 linux-kernel@vger.kernel.org, edumazet@google.com, netdev@vger.kernel.org,
 nikolay@nvidia.com, roopa@nvidia.com,
 syzbot+881d65229ca4f9ae8c84@syzkaller.appspotmail.com, kuba@kernel.org,
 skhan@linuxfoundation.org, pabeni@redhat.com, davem@davemloft.net,
 hkallweit1@gmail.com
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

On 8/20/23 01:50, Ziqi Zhao wrote:
> On Sat, Aug 19, 2023 at 12:25:15PM +0300, Nikolay Aleksandrov wrote:
> Hi Nik,
> 
> Thank you so much for reviewing the patch and getting back to me!
> 
>> IIRC there was no bug, it was a false-positive. The reference is held a bit
>> longer but then released, so the device is deleted later.
> 
>> If you reproduced it, is the device later removed or is it really stuck?
> 
> I ran the reproducer again without the patch and it seems you are
> correct. It was trying to create a very short-lived bridge, then delete
> it immediately in the next call. The device in question "wpan4" never
> showed up when I polled with `ip link` in the VM, so I'd say it did not
> get stuck.
> 
>> How would it leak a reference, could you elaborate?
>> The reference is always taken and always released after the call.
> 
> This was where I got a bit confused too. The system had a timeout of
> 140 seconds for the unregister_netdevice check. If the bridge in
> question was created and deleted repeatedly, the warning would indeed
> not be an actual reference leak. But how could its reference show up
> after 140 seconds if the bridge's creation and deletion were all within
> a couple of milliseconds?
> 
> So I let the system run for a bit longer with the reproducer, and after
> ~200 seconds, the kernel crashed and complained that some tasks had
> been waiting for too long (more than 143 seconds) trying to get hold of
> the br_ioctl_mutex. This was also quite strange to me, since on the
> surface it definitely looked like a deadlock, but the strict locking
> order as I described previously should prevent any deadlocks from
> happening.
> 
> Anyways, I decided to test switching up the lock order, since both the
> refcnt warning and the task stall seemed closely related to the above
> mentioned locks. When I ran the reproducer again after the patch, both
> the warning and the stall issue went away. So I guess the patch is
> still relevant in preventing bugs in some extreme cases -- although the
> scenario created by the reproducer would probably never happen in real
> usages?
> 

Thank you for testing, but we really need to understand what is going on 
and why the device isn't getting deleted for so long. Currently I don't 
have the time to debug it properly (I'll be able to next week at the 
earliest). We can't apply the patch based only on tests without 
understanding the underlying issue. I'd look into what
the reproducer is doing exactly and also check the system state while 
the deadlock has happened. Also you can list the currently held locks 
(if CONFIG_LOCKDEP is enabled) via magic sysrq + d for example. See 
which process is holding them, what are their priorities and so on.
Try to build some theory of how a deadlock might happen and then go
about proving it. Does the 8021q module have the same problem? It uses
similar code to set its hook.

> Please let me know whether you have any thoughts on how the above
> issues were triggered, and what other information I could gather to
> further demystify this bug. Thank you again for your help!
> 
> Best regards,
> Ziqi

