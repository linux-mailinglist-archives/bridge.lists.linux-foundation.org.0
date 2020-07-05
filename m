Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C491214EDA
	for <lists.bridge@lfdr.de>; Sun,  5 Jul 2020 21:19:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 08E578748B;
	Sun,  5 Jul 2020 19:19:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SmlyKEGK5W1m; Sun,  5 Jul 2020 19:18:59 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 75F31873F8;
	Sun,  5 Jul 2020 19:18:59 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 640DAC08A9;
	Sun,  5 Jul 2020 19:18:59 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0B425C016F
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:18:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id EEDA4886CD
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:18:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id u9f+2Qd2aIc4 for <bridge@lists.linux-foundation.org>;
 Sun,  5 Jul 2020 19:18:57 +0000 (UTC)
X-Greylist: delayed 00:07:15 by SQLgrey-1.7.6
Received: from mail-ej1-f66.google.com (mail-ej1-f66.google.com
 [209.85.218.66])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 31AD987F74
 for <bridge@lists.linux-foundation.org>; Sun,  5 Jul 2020 19:18:57 +0000 (UTC)
Received: by mail-ej1-f66.google.com with SMTP id l12so40196447ejn.10
 for <bridge@lists.linux-foundation.org>; Sun, 05 Jul 2020 12:18:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=Xt3dOuMU6eTwoXcY8IjEkhHFc+2w+XryW8TVkin2ZTU=;
 b=PokwTfkLrg/bmM8c13myLwZt3KcUH8zV5xC962EE89+3RJyCJybDmdF5P0hHyoiEBx
 SbDQTSK5sdWOGsabemoZqA3fkToEAqMR84VdCLxu97SpYIh+R1PmlFGfdHMbWHv14lKM
 VmH5/fBkrq8jmYeqHNu3qL2rAxPXJZXo2EyMY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=Xt3dOuMU6eTwoXcY8IjEkhHFc+2w+XryW8TVkin2ZTU=;
 b=TAcjuGOcNfAAVmsodKyHMpCQlqooBtGN7J/fWzhc2kkfRXqnGg1dmqbhYMZRp6THSE
 NmWATnOdRfLGQFPmw66I4QYsArPI4b57yA/qZ60zHUuRPAn/xgWfa3CbKSgi0bgjBvu1
 OrxKwLmog41/Hv3f2XYH02eeoxGdQXNy80VjJb5RH155xZ56W6+fVSKnjrxjP8cHCxcy
 8iq20Br/c8NwYjkOuHy+QF/XP+VHc7tBTAR7ROzOMPS7++lOOz0w8oZkcO2NDHH3AePX
 XMhGSRYa+BWs6U+tWzbTaIatM+pcE1jPOCCa11sa2pjMpCCdMu/zzx8cbWlZ0ewRI5aW
 4PfQ==
X-Gm-Message-State: AOAM530qNjee5bVwTTJuo9S4cRxbnV7m77ftMk4HhpKRh24xwM154/5+
 7ByazF8ZtyNd7uImBjuTHQtNk/41rCguFQ==
X-Google-Smtp-Source: ABdhPJxiTpppeAh2jceWrIULklFnFR7tpoaFOd+aNldck56zwzDpUkkVseaUjAhTOi+cGJtsrBs/oQ==
X-Received: by 2002:a17:906:26d6:: with SMTP id
 u22mr5832091ejc.271.1593976300766; 
 Sun, 05 Jul 2020 12:11:40 -0700 (PDT)
Received: from [192.168.0.112] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id b98sm21583091edf.24.2020.07.05.12.11.39
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 05 Jul 2020 12:11:40 -0700 (PDT)
To: =?UTF-8?Q?Linus_L=c3=bcssing?= <linus.luessing@c0d3.blue>
References: <20200705182234.10257-1-linus.luessing@c0d3.blue>
 <093beb97-87e8-e112-78ad-b3e4fe230cdb@cumulusnetworks.com>
 <20200705190851.GC2648@otheros>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <4728ef5e-0036-7de6-8b6f-f29885d76473@cumulusnetworks.com>
Date: Sun, 5 Jul 2020 22:11:39 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.8.0
MIME-Version: 1.0
In-Reply-To: <20200705190851.GC2648@otheros>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 8bit
Cc: Martin Weinelt <martin@linuxlounge.net>, netdev@vger.kernel.org,
 Roopa Prabhu <roopa@cumulusnetworks.com>, bridge@lists.linux-foundation.org,
 linux-kernel@vger.kernel.org, "David S . Miller" <davem@davemloft.net>
Subject: Re: [Bridge] [PATCH net] bridge: mcast: Fix MLD2 Report IPv6
 payload length check
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

On 7/5/20 10:08 PM, Linus Lüssing wrote:
> On Sun, Jul 05, 2020 at 09:33:13PM +0300, Nikolay Aleksandrov wrote:
>> On 05/07/2020 21:22, Linus Lüssing wrote:
>>> Commit e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in
>>> igmp3/mld2 report handling") introduced a small bug which would potentially
>>> lead to accepting an MLD2 Report with a broken IPv6 header payload length
>>> field.
>>>
>>> The check needs to take into account the 2 bytes for the "Number of
>>> Sources" field in the "Multicast Address Record" before reading it.
>>> And not the size of a pointer to this field.
>>>
>>> Fixes: e57f61858b7c ("net: bridge: mcast: fix stale nsrcs pointer in igmp3/mld2 report handling")
>>> Signed-off-by: Linus Lüssing <linus.luessing@c0d3.blue>
>>> ---
>>>   net/bridge/br_multicast.c | 2 +-
>>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>>
>>
>> I'd rather be more concerned with it rejecting a valid report due to wrong size. The ptr
>> size would always be bigger. :)
>>
>> Thanks!
>> Acked-by: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> 
> Aiy, you're right, it's the other way round. I'll update the
> commit message and send a v2 in a minute, with your Acked-by
> included.
> 

By the way, I can't verify at the moment, but I think we can drop that whole
hunk altogether since skb_header_pointer() is used and it will simply return
an error if there isn't enough data for nsrcs.

