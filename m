Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 15A9F68EFBC
	for <lists.bridge@lfdr.de>; Wed,  8 Feb 2023 14:30:54 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 45B674091C;
	Wed,  8 Feb 2023 13:30:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 45B674091C
Authentication-Results: smtp4.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=vsG6o0+N
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id CweUdrzpe6UW; Wed,  8 Feb 2023 13:30:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 4375140940;
	Wed,  8 Feb 2023 13:30:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4375140940
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id D9252C007C;
	Wed,  8 Feb 2023 13:30:48 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id BEC6BC002B
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 13:30:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 939E540B5A
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 13:30:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 939E540B5A
Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com
 header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256
 header.s=20210112 header.b=vsG6o0+N
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5Hx_xvy8SrBr for <bridge@lists.linux-foundation.org>;
 Wed,  8 Feb 2023 13:30:46 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 63AA6400F2
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com
 [IPv6:2a00:1450:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 63AA6400F2
 for <bridge@lists.linux-foundation.org>; Wed,  8 Feb 2023 13:30:46 +0000 (UTC)
Received: by mail-ej1-x62e.google.com with SMTP id m2so51215950ejb.8
 for <bridge@lists.linux-foundation.org>; Wed, 08 Feb 2023 05:30:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bghcBSVVjOnDSTu4fI5Fr851/TGgxU6OXRrvvQvz/M8=;
 b=vsG6o0+N006tv5j5AVuAR9PdyHfVEk7j/0/wj2XKjodhe4nFVNeA+CleK3E0rN4D/R
 iWcVumwXa5V3cxpg2fw6SzUH2dj3TPAyXz06UqOaVR2MJ4RAChiSIDUC3wZfKDw7uauD
 pVlutxhJIDu/9s3AYCxnRFcW0N0xg7I5/7D0r14o4JKHmOTK0IQLHBpEPi+CJMaJ9uaP
 DhFOQ4Q4t8HY44yv0xvu+fjCMcSb38w/B0poS+i6xOGpyFVSNNII0Gco8/HKvXBSDMoG
 eqAYskyI9EK01cc3mgND4cfHVk6zj4qJhukbL1bjZtTn7IgyGJH57p02pPDYCuWVgLSr
 u+7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bghcBSVVjOnDSTu4fI5Fr851/TGgxU6OXRrvvQvz/M8=;
 b=e/tW8rvrw6OeCzUcjC+hTSQ0THA4xsEM/CxT02dd0myJZwuBXHt1dr3BU6/AkoCakd
 0NOGR/Wt8gixg5bjk5FydRQLUQOkSuTKwISN61B8zNRDL0FwXXZ+TZvMrR4wpXniAOQr
 PAplh+iG/L65SAHGookx8w2VTAMLBkxnV8Z8rP2minsiHgxj4AZnwuHlelTD/4j0nN6r
 oeY+SrIKTTgkxYrkf+vHwNOc4u8gKkBcBd/T9IfZgTHCcfgw7XcUX1PODGJEI63/nvhR
 uh84fj306P+Wd1lSjK4Navt5NNUcPx7ULVZaKhEmxwYfkXYY7Dj8f2a7oRsZPsdZWMJe
 KNbg==
X-Gm-Message-State: AO0yUKWL6mTXPO7ihlXMvGxlm9T8WZ9lW/+xs7W2/fh9GK2gb3yh/hki
 wABVgtkgYocF0crIHZTxaadXgw==
X-Google-Smtp-Source: AK7set+3bEtDssHH7Nx7ZO0qprJo0mrpmZnd2ui3ik3JXFQ7TcjyC2d4jN2azLEGKuAtcuSnhKuGFA==
X-Received: by 2002:a17:906:1ec8:b0:88d:5fd1:3197 with SMTP id
 m8-20020a1709061ec800b0088d5fd13197mr7478243ejj.50.1675863044339; 
 Wed, 08 Feb 2023 05:30:44 -0800 (PST)
Received: from [192.168.3.225] ([81.6.34.132])
 by smtp.gmail.com with ESMTPSA id
 bl3-20020a170906c24300b007bff9fb211fsm8345526ejb.57.2023.02.08.05.30.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 08 Feb 2023 05:30:44 -0800 (PST)
Message-ID: <1a71f6f8-09f6-9208-7368-6b2e3bb4af87@blackwall.org>
Date: Wed, 8 Feb 2023 14:30:43 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Content-Language: en-US
To: Simon Horman <simon.horman@corigine.com>,
 Yang Li <yang.lee@linux.alibaba.com>
References: <20230208005626.56847-1-yang.lee@linux.alibaba.com>
 <Y+OdyiQpz7lIBfh3@corigine.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <Y+OdyiQpz7lIBfh3@corigine.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 Abaci Robot <abaci@linux.alibaba.com>, linux-kernel@vger.kernel.org,
 edumazet@google.com, roopa@nvidia.com, kuba@kernel.org, pabeni@redhat.com,
 davem@davemloft.net
Subject: Re: [Bridge] [PATCH -next] net: bridge: clean up one inconsistent
	indenting
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

On 2/8/23 15:04, Simon Horman wrote:
> On Wed, Feb 08, 2023 at 08:56:26AM +0800, Yang Li wrote:
>> ./net/bridge/br_netlink_tunnel.c:317:4-27: code aligned with following code on line 318
>>
>> Reported-by: Abaci Robot <abaci@linux.alibaba.com>
>> Link: https://bugzilla.openanolis.cn/show_bug.cgi?id=3977
>> Signed-off-by: Yang Li <yang.lee@linux.alibaba.com>
> 
> As you may need to respin this:
> 
> Assuming this is targeting net-next, which seems likely to me,
> the subject should denote that. Something like this:
> 
> [PATCH net-next] net: bridge: clean up one inconsistent indenting
> 
>> ---
>>   net/bridge/br_netlink_tunnel.c | 2 +-
>>   1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/net/bridge/br_netlink_tunnel.c b/net/bridge/br_netlink_tunnel.c
>> index 17abf092f7ca..eff949bfdd83 100644
>> --- a/net/bridge/br_netlink_tunnel.c
>> +++ b/net/bridge/br_netlink_tunnel.c
>> @@ -315,7 +315,7 @@ int br_process_vlan_tunnel_info(const struct net_bridge *br,
>>   
>>   			if (curr_change)
>>   				*changed = curr_change;
>> -			 __vlan_tunnel_handle_range(p, &v_start, &v_end, v,
>> +			__vlan_tunnel_handle_range(p, &v_start, &v_end, v,
>>   						    curr_change);
> 
> I think you also need to adjust the line immediately above.

You meant below, right? :) i.e. "curr_change)", that seems to get
misaligned after the change and needs to be adjusted as well.

> 
>>   		}
>>   		if (v_start && v_end)
>> -- 
>> 2.20.1.7.g153144c
>>

