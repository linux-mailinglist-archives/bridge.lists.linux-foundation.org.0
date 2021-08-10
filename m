Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2FDE83E5748
	for <lists.bridge@lfdr.de>; Tue, 10 Aug 2021 11:43:59 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A12FB401B4;
	Tue, 10 Aug 2021 09:43:54 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id W21KPcxC37Qc; Tue, 10 Aug 2021 09:43:53 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp2.osuosl.org (Postfix) with ESMTPS id 0325940263;
	Tue, 10 Aug 2021 09:43:52 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id B276DC001F;
	Tue, 10 Aug 2021 09:43:52 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 40F4FC000E
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 09:43:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D8A960777
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 09:43:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp3.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WOrCAQGys37k for <bridge@lists.linux-foundation.org>;
 Tue, 10 Aug 2021 09:43:50 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com
 [IPv6:2607:f8b0:4864:20::102a])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 94F6B60670
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 09:43:50 +0000 (UTC)
Received: by mail-pj1-x102a.google.com with SMTP id
 gz13-20020a17090b0ecdb0290178c0e0ce8bso2461700pjb.1
 for <bridge@lists.linux-foundation.org>; Tue, 10 Aug 2021 02:43:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=subject:to:references:from:message-id:date:user-agent:mime-version
 :in-reply-to:content-language:content-transfer-encoding;
 bh=HuDel8ayMwuZGcNVC/Xca01aagp05sJ/uzkjO6nmwrY=;
 b=MfmFVDcau+Ht5MC0Z11A0Lodc1upVa5x8ongdWS8TE8tjKiQLuzuK0pn8mBCNzIfSI
 qs5dNWnAfz2I+dUz6znusiGsfKJ7BDJMNJJqNHtjgPgDuOz/w6QTWaycta6RfSaj5fJd
 xRELdlQj1pSRQzr80J9k4mya1b6nFDdCC1Y7iw8GO8T31QuclJkAvIMX521fpn85ZBU9
 FZJOhHVQgXcQmfBRdZHxeYjK0v6CfHTqslJchOvJxdxdb8QzvGcT/6Rqkrmf2JcIGtd8
 Wk6mB9mSaA1A3L0d8p7I/YpIoBt259/YJdwN1q0JP7svIeqbfMiNa3IMTA8NHqiRtn/+
 U/cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:subject:to:references:from:message-id:date
 :user-agent:mime-version:in-reply-to:content-language
 :content-transfer-encoding;
 bh=HuDel8ayMwuZGcNVC/Xca01aagp05sJ/uzkjO6nmwrY=;
 b=Q4/UPeRbeqfyDaSkgNvqerlxeLd7OoE2cO1s5nCFq4EfSYMexc6eSUydgo20Sv7+SH
 ek+Yi2/E8Nm9XysyZc0ztL9qLHisJqV16lZahPGn+0uLznvIlnru+Jo+9ruta1KEYti3
 gN5DhFkCFcXsTX6PS3tMRRxHNU1/0P/BDoYSgFibJI0LzPnk7wtTP7G2YI1qqYDU01oU
 nMS69IVE6PfpSgpQFTRl5ve4HCtdeZ9Luge0XQcIjgOQLdwD4V8jXY0eQejPP3J8pq8e
 i947AQbtFEQLF0+KgEAj1DJvLbLd2wPbR89tkmDzwCzwyP+7lHPx6xpGmJkpJPxtZn9o
 mZiA==
X-Gm-Message-State: AOAM5337K3JnMnJWPRtxv5aTSTwpGjSpPowrNxd74dtmH7kCpRCtDR9R
 N1QTjVZoeuLJTJzp/TkfvME=
X-Google-Smtp-Source: ABdhPJyYxxRshDihijJiBRh2viwhTJjaq/7HY4JjQ/hF2XykKb5wH9QSzJq7MDY2D/2Z/D0DzVB3HQ==
X-Received: by 2002:a17:90b:228c:: with SMTP id
 kx12mr30807002pjb.38.1628588630078; 
 Tue, 10 Aug 2021 02:43:50 -0700 (PDT)
Received: from [192.168.1.22] (amarseille-551-1-7-65.w92-145.abo.wanadoo.fr.
 [92.145.152.65])
 by smtp.gmail.com with ESMTPSA id h11sm11561709pfv.154.2021.08.10.02.43.46
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 10 Aug 2021 02:43:49 -0700 (PDT)
To: DENG Qingfang <dqfext@gmail.com>, Roopa Prabhu <roopa@nvidia.com>,
 Nikolay Aleksandrov <nikolay@nvidia.com>, David Miller
 <davem@davemloft.net>, Andrew Lunn <andrew@lunn.ch>,
 Jakub Kicinski <kuba@kernel.org>, bridge@lists.linux-foundation.org,
 netdev <netdev@vger.kernel.org>, Vivien Didelot <vivien.didelot@gmail.com>,
 Vladimir Oltean <olteanv@gmail.com>
References: <CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com>
From: Florian Fainelli <f.fainelli@gmail.com>
Message-ID: <b9a61559-e7f7-86e9-6ac2-c988255db5f0@gmail.com>
Date: Tue, 10 Aug 2021 02:43:46 -0700
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:78.0) Gecko/20100101
 Thunderbird/78.12.0
MIME-Version: 1.0
In-Reply-To: <CALW65jbotyW0MSOd-bd1TH_mkiBWhhRCQ29jgn+d12rXdj2pZA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] Bridge port isolation offload
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



On 8/9/2021 9:40 PM, DENG Qingfang wrote:
> Hi,
> 
> Bridge port isolation flag (BR_ISOLATED) was added in commit
> 7d850abd5f4e. But switchdev does not offload it currently.
> It should be easy to implement in drivers, just like bridge offload
> but prevent isolated ports to communicate with each other.
> 
> Your thoughts?

It maps well on Broadcom switches but there was not a known use case 
AFAICT that warranted mapping this flag to program the switch hardware 
accordingly.
-- 
Florian
