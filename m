Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id B4B8418A978
	for <lists.bridge@lfdr.de>; Thu, 19 Mar 2020 00:50:10 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4BBBD87909;
	Wed, 18 Mar 2020 23:50:09 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id OY18EV-kMtWc; Wed, 18 Mar 2020 23:50:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB4B7878F1;
	Wed, 18 Mar 2020 23:50:06 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 9DB2BC087F;
	Wed, 18 Mar 2020 23:50:06 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 4B3FFC087F
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 23:50:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 3738687D56
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 23:50:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Qm7uYERVOYzP for <bridge@lists.linux-foundation.org>;
 Wed, 18 Mar 2020 23:50:03 +0000 (UTC)
X-Greylist: from auto-whitelisted by SQLgrey-1.7.6
Received: from mail-ed1-f65.google.com (mail-ed1-f65.google.com
 [209.85.208.65])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 0498787D41
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 23:50:02 +0000 (UTC)
Received: by mail-ed1-f65.google.com with SMTP id i24so404633eds.1
 for <bridge@lists.linux-foundation.org>; Wed, 18 Mar 2020 16:50:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=cumulusnetworks.com; s=google;
 h=subject:to:cc:references:from:message-id:date:user-agent
 :mime-version:in-reply-to:content-language:content-transfer-encoding;
 bh=o5P//IGU0B1fbtQBBBaXBr2gpazCG2olY1bZnj6CAfM=;
 b=ct+ATNFVJrn3VKb5lby+6uwVXLapW/uZ/663YMP1KbQLzRN2o1ZXqiRFNIu30khQIZ
 UWHAZWFMLshnFevO9d3DKS9qWPSwyhLZ+hg3Zneb9f8Lgl6p/KAX1Wp0YYznxmTgilTl
 DJYOg14AfLdMbSmRp0bLXbtGxLZA2IkUfTDMc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:cc:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=o5P//IGU0B1fbtQBBBaXBr2gpazCG2olY1bZnj6CAfM=;
 b=nYYcSPjxDoifnpVwPwyQrwqeQ4odVnciDpC7U7/ziOock02vntmOp5/besfvJv2QaU
 JuhPlNfG3E0bIAJkU1Aw/81/W4aV6evphCCDQUL5YRJ43KD+akjMzXIj2BrcUyYU8YTE
 4PsBNOfb3VZhQT3Y65TjEFQ6suOZAlrnXbKld/5ThI9kqCyQ/rofsfKNpWkJ57z4hlrC
 59AttqFKSOKiev0cNx8cuFrG/nt384CBIwU65CSWMpOLnX3BknVav1qayuOwqi6gLTLd
 bdzUUsgsi5bZLhRqJOQSoKZdhVMpHYUAJWklMnl4N6DZp9J49uCKk1dABn5fODNpr7jz
 Hidw==
X-Gm-Message-State: ANhLgQ1VKAjGEky0xNFX8NkJYiIjTCEpxq7JVmS1JbIGmNsEonaPgNEw
 8Q/Wyq+AiFuJqVRlT6949Ai/PxJqyKA=
X-Google-Smtp-Source: ADFU+vuSHRPCLj5frP/2lBllWiJ4obVvgyRgb7LUTptU9yzeycQULifRXDxCO1AvRU5pr64dqhPRzA==
X-Received: by 2002:a17:906:480a:: with SMTP id
 w10mr729452ejq.16.1584575401081; 
 Wed, 18 Mar 2020 16:50:01 -0700 (PDT)
Received: from [192.168.0.107] (84-238-136-197.ip.btc-net.bg. [84.238.136.197])
 by smtp.googlemail.com with ESMTPSA id da23sm16196edb.85.2020.03.18.16.50.00
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 18 Mar 2020 16:50:00 -0700 (PDT)
To: David Miller <davem@davemloft.net>
References: <20200318130325.100508-1-nikolay@cumulusnetworks.com>
 <20200318.164234.1141226942122598740.davem@davemloft.net>
From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
Message-ID: <dfbabebc-6c04-0df9-6fb3-46fd875674d2@cumulusnetworks.com>
Date: Thu, 19 Mar 2020 01:49:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.2.2
MIME-Version: 1.0
In-Reply-To: <20200318.164234.1141226942122598740.davem@davemloft.net>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Cc: netdev@vger.kernel.org, roopa@cumulusnetworks.com,
 bridge@lists.linux-foundation.org
Subject: Re: [Bridge] [PATCH net-next] net: bridge: vlan: include stats in
 dumps if requested
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

On 3/19/20 1:42 AM, David Miller wrote:
> From: Nikolay Aleksandrov <nikolay@cumulusnetworks.com>
> Date: Wed, 18 Mar 2020 15:03:25 +0200
> 
>> @@ -170,11 +170,13 @@ struct bridge_stp_xstats {
>>   /* Bridge vlan RTM header */
>>   struct br_vlan_msg {
>>   	__u8 family;
>> -	__u8 reserved1;
>> +	__u8 flags;
>>   	__u16 reserved2;
>>   	__u32 ifindex;
>>   };
> 
> I can't allow this for two reasons:
> 
> 1) Userspace explicitly initializing all members will now get a compile
>     failure on the reference to ->reserved1
> 
> 2) Userspace not initiailizing reserved fields, which worked previously,
>     might send in flags that trigger the new behavior.
> 
> Sorry, this is UAPI breakage.
> 

Hmm, fair enough. I'll respin with a new dump attribute which achieves the same.

Thanks.


