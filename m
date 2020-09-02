Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 4285525B518
	for <lists.bridge@lfdr.de>; Wed,  2 Sep 2020 22:09:00 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8ABEA86A02;
	Wed,  2 Sep 2020 20:08:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IPpq6EscN0RX; Wed,  2 Sep 2020 20:08:55 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id E2BAD86932;
	Wed,  2 Sep 2020 20:08:49 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D21C0C0051;
	Wed,  2 Sep 2020 20:08:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D803C0051
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 20:08:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 92D9586936
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 20:08:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id qQd1XEFpSgE6 for <bridge@lists.linux-foundation.org>;
 Wed,  2 Sep 2020 20:08:45 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-wr1-f65.google.com (mail-wr1-f65.google.com
 [209.85.221.65])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 886D686896
 for <bridge@lists.linux-foundation.org>; Wed,  2 Sep 2020 20:08:45 +0000 (UTC)
Received: by mail-wr1-f65.google.com with SMTP id z1so720301wrt.3
 for <bridge@lists.linux-foundation.org>; Wed, 02 Sep 2020 13:08:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=NOYrVgGI+B1Pc9ZOUVrhpgVGv95zQQBnLxcl/fTdh8k=;
 b=Ao3a5eYyzc0n+ykdiUDd9E659Nu5dgyuGmM6ecfVu3GVxJizcn5Pi+wnkW6O+Xs0Ti
 +AvTHSy0nRcBZMJsw7OdJKisLM78gYg1lY0Fvapb0r4+g+XYvMIAUI46XFInQ3KPXuSP
 WGVOUEamU878YETLWNW+dN2hLAfH/6aR5SBPQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=NOYrVgGI+B1Pc9ZOUVrhpgVGv95zQQBnLxcl/fTdh8k=;
 b=DtdLlyQDv4j/1iK2z868vuQMqP3i2xgG6dO5wQWaJayemlBVv6T5z3eOb6PPTrq/Ah
 2WjSFud9r6KEKRY3ruchu1vJkQUAEPHoFbe4aOakfb6le516UXM73MLucii/HpUD+woU
 AdpOLH/i97VMvjGAeyRvyzDX353mTj4TGJWHOgxGLnVOv6NQFo0RW7/us0lIHPRi8RwY
 PhDjXrKGjT/++i2WdxdXudoC+FybS5HzS7zbknmBygOFlc7NsJC+Wc7uBAuTNvkLNZWp
 4K8kERt4JKVG4ay1a45g4rPEsK/NcjGidOuj5Z/Sji7m8rJlBzmsLrewnOyV6spaMW6a
 haNQ==
X-Gm-Message-State: AOAM5335jLig0oiTjkVgiPrIvrKr/MvKtcMN3q0MOeb8XKFK7pX++LaJ
 g2uPphB0YG8oQv1aJkMA29adnVdAo7v09eKt
X-Google-Smtp-Source: ABdhPJyB6p3LLReZ9PE7qrNsVpMPImcyZxudbohNePE0M6AO5CTRJXZ4sfAz+5CmvXHFTUyAj627Yg==
X-Received: by 2002:adf:e583:: with SMTP id l3mr8576753wrm.72.1599077323559;
 Wed, 02 Sep 2020 13:08:43 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id c6sm1154210wrr.15.2020.09.02.13.08.41
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 02 Sep 2020 13:08:42 -0700 (PDT)
To: David Miller <davem@davemloft.net>
References: <20200902112529.1570040-1-nikolay@cumulusnetworks.com>
 <20200902.125846.1328960907241014780.davem@davemloft.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <16ed8f8a-2040-5546-5cea-09a8a5b0bd7b@cumulusnetworks.com>
Date: Wed, 2 Sep 2020 23:08:40 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.11.0
MIME-Version: 1.0
In-Reply-To: <20200902.125846.1328960907241014780.davem@davemloft.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
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

On 9/2/20 10:58 PM, David Miller wrote:
> From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Date: Wed,  2 Sep 2020 14:25:14 +0300
> 
>> Here're the sets that will come next (in order):
>>   - Fast path patch-set which adds support for (S, G) mdb entries needed
>>     for IGMPv3 forwarding, entry add source (kernel, user-space etc)
>>     needed for IGMPv3 entry management, entry block mode needed for
>>     IGMPv3 exclude mode. This set will also add iproute2 support for
>>     manipulating and showing all the new state.
>>   - Selftests patch-set which will verify all IGMPv3 state transitions
>>     and forwarding
>>   - Explicit host tracking patch-set, needed for proper fast leave and
>>     with it fast leave will be enabled for IGMPv3
>>
>> Not implemented yet:
>>   - Host IGMPv3 support (currently we handle only join/leave as before)
>>   - Proper other querier source timer and value updates
>>   - IGMPv3/v2 compat (I have a few rough patches for this one)
> 
> What about ipv6 support?  The first thing I notice when reading these
> patches is the source filter code only supports ipv4.
> 

Indeed, these are IGMPv3/IPv4 targeted. But MLDv2 should be relatively easy to
add once we have all the set/state transitions as it uses the same.
Adding both at once would be a much bigger change.

Once all the infra (with fast-path) for IGMPv3 is in, MLDv2 should be a much
easier change, but I must admit given the amount of work this required I haven't
yet looked into MLDv2 in details. The majority of the changes would be just switch
protocol statements that take care of the IPv6 part.

I have also explicitly added the IPv4 checks right now to limit the dump code, otherwise
we'd get for example group mode export for IPv6 entries which yet don't support it.

If you'd prefer I can remove the explicit IPv4 checks and leave the switch protocol check
with ETH_P_IP only currently, but it wouldn't affect the end result much.



