Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C734425B539
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 22:17:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 5728E86AF8;
	Wed,  2 Sep 2020 20:17:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id hxvYlEcN_3P5; Wed,  2 Sep 2020 20:17:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AB47F86B12;
	Wed,  2 Sep 2020 20:17:53 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 97346C0893;
	Wed,  2 Sep 2020 20:17:53 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9480BC0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 20:17:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 90CB986B0E
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 20:17:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id KeQ7Ut_V_49d for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 20:17:52 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com
 [209.85.221.66])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id C337E86AF8
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 20:17:51 +0000 (UTC)
Received: by mail-wr1-f66.google.com with SMTP id t10so759113wrv.1
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 13:17:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:from:to:cc:references:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=fPEFL7gFVrhQrryf5xKV+LQS/a3qR13kbUD3/f6S7vw=;
 b=KbYeJzz+kSttAWyicoItZNefAfvT6b0JW3qCBF2yA4Y/8CL5Zb/k13bD4v7PCMaRKs
 ekT3jIFa+QXRBDZIc+nfU6ChJq9ZFwhUop4SAwI+pnOvoDhmt24ZQNuoFTWuUbsF/Vu9
 1YwoW+hVnAWxm2+/NU4UKcm/t7TBuASqK8TSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:from:to:cc:references:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=fPEFL7gFVrhQrryf5xKV+LQS/a3qR13kbUD3/f6S7vw=;
 b=Mo9HsMNMBiqRhAEGT43SxdCSsToWuRYOWx2Np4ut+ZBRBJJu2uY5K9lgFVWWvZqPQb
 NuJQq9jXHCMdxKIdvS+YdO1fJHiWUbUtjnz6AH6MFwAR/b3ZoUCrZGrxh63250OtPSfr
 ZS4RFNQx7MUk6013icUMzfFnzwizpzKnRc18UT8rAHWpgzMa7A9GxOmJ/LUHCGCnJpAq
 ZftjH70PCyQk9L9iOpCXzWsWgnYZnzQ3u6V4Sakymz0PdoiayKapt+Sk5rRo5mUdjuip
 Tuhg4ZsZeqFg2FOVy9uygq4VhtMhfpk1ynACxcI2agba16q1KRyDRxmzOQDqt4F57YcA
 y5HQ==
X-Gm-Message-State: AOAM531TFbsHadYhiUgcOrVnbB0dq7mieMTtpVYphNSpCwQJhkmE8qlz
 Ef01HAQi0v4/f0FSRxqG9JF42cCHm/+mUGfe
X-Google-Smtp-Source: ABdhPJwfyWwAtePZZ1qHCfdNTS3HFCuFdv6Dv8fe4p8RrRusZo5lka9ML2akf4WbQkiWQyfAigBJRA==
X-Received: by 2002:adf:f492:: with SMTP id l18mr4182372wro.280.1599077869907; 
 Wed, 02 Sep 2020 13:17:49 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id 124sm1049125wmd.31.2020.09.02.13.17.48
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Sep 2020 13:17:49 -0700 (PDT)
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
To: David Miller <davem@davemloft.net>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
 <20200902.125846.1328960907241014780.davem@davemloft.net>
 <16ed8f8a-2040-5546-5cea-09a8a5b0bd7b@cumulusnetworks.com>
Message-ID: <22c022da-4b1d-b0fe-b701-ce2163b3c3c0@cumulusnetworks.com>
Date: Wed, 2 Sep 2020 23:17:46 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <16ed8f8a-2040-5546-5cea-09a8a5b0bd7b@cumulusnetworks.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org, roopa@nvidia.com
Subject: Re: [Bridge] [PATCH net-next v2 00/15] net: bridge: mcast: initial
 IGMPv3 support (part 1)
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

On 9/2/20 11:08 PM, Nikolay Aleksandrov wrote:
> On 9/2/20 10:58 PM, David Miller wrote:
>> From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
>> Date: Wed,  2 Sep 2020 14:25:14 +0300
>>
>>> Here're the sets that will come next (in order):
>>>   - Fast path patch-set which adds support for (S, G) mdb entries needed
>>>     for IGMPv3 forwarding, entry add source (kernel, user-space etc)
>>>     needed for IGMPv3 entry management, entry block mode needed for
>>>     IGMPv3 exclude mode. This set will also add iproute2 support for
>>>     manipulating and showing all the new state.
>>>   - Selftests patch-set which will verify all IGMPv3 state transitions
>>>     and forwarding
>>>   - Explicit host tracking patch-set, needed for proper fast leave and
>>>     with it fast leave will be enabled for IGMPv3
>>>
>>> Not implemented yet:
>>>   - Host IGMPv3 support (currently we handle only join/leave as before)
>>>   - Proper other querier source timer and value updates
>>>   - IGMPv3/v2 compat (I have a few rough patches for this one)
>>
>> What about ipv6 support?  The first thing I notice when reading these
>> patches is the source filter code only supports ipv4.
>>
> 
> Indeed, these are IGMPv3/IPv4 targeted. But MLDv2 should be relatively easy to
> add once we have all the set/state transitions as it uses the same.
> Adding both at once would be a much bigger change.
> 
> Once all the infra (with fast-path) for IGMPv3 is in, MLDv2 should be a much
> easier change, but I must admit given the amount of work this required I haven't
> yet looked into MLDv2 in details. The majority of the changes would be just switch
> protocol statements that take care of the IPv6 part.
> 
> I have also explicitly added the IPv4 checks right now to limit the dump code, otherwise
> we'd get for example group mode export for IPv6 entries which yet don't support it.
> 
> If you'd prefer I can remove the explicit IPv4 checks and leave the switch protocol check
> with ETH_P_IP only currently, but it wouldn't affect the end result much.

i. e. this doesn't exclude IPv6 or makes it worse for it, on the contrary the ops needed to
implement MLDv2 state transitions are in this set, they just need to be extended for v6.
The new br_ip src group field contains also a field for an IPv6 address.


