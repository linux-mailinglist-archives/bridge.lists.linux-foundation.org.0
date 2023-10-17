Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 7E6C27CBE76
	for <lists.bridge@lfdr.de>; Tue, 17 Oct 2023 11:07:09 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8BB1540C11;
	Tue, 17 Oct 2023 09:07:07 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8BB1540C11
Authentication-Results: smtp2.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=U8ke447i
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id bDVO5kmDAI1e; Tue, 17 Oct 2023 09:07:06 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp2.osuosl.org (Postfix) with ESMTPS id E35B541030;
	Tue, 17 Oct 2023 09:07:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E35B541030
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 994D0C0DD3;
	Tue, 17 Oct 2023 09:07:05 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 9D483C0032
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:07:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 697E040C11
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:07:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 697E040C11
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ugVmZkOSj1hJ for <bridge@lists.linux-foundation.org>;
 Tue, 17 Oct 2023 09:07:02 +0000 (UTC)
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com
 [IPv6:2a00:1450:4864:20::335])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 72EBD40A17
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 09:07:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 72EBD40A17
Received: by mail-wm1-x335.google.com with SMTP id
 5b1f17b1804b1-40651a72807so51514205e9.1
 for <bridge@lists.linux-foundation.org>; Tue, 17 Oct 2023 02:07:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1697533620; x=1698138420;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=bgo6/o6F9GJ+i/Na8KtZEjz2ourig29cQcy60o4Bri8=;
 b=U8ke447iVgWgcQz9kwhomZTMTKixXffFuXOiUcvAIIv6pxWyTa0ydVW9s9AHePSvD3
 zgCt3X5iXkmBL+dwAHx/7OR53oJHdxX8v1slSEF07KYWRUMImyo0s+WXJpurOD51VZ/s
 GwKoi270z0ULy/DYYajtXXQT/N/mPVWCVhvw/jcw/NAdR5/AgYUoHTF6vV0PqukIBocP
 KWNRXR5a5Cz5sQz4vZhD/2n1ihx0COD9rJY3/mc4/vq1meiLb1RqDGkt7f42LVLs+OQ7
 RPE+H5aIzED5DE2XybXJuMf0+rcSskssRdVF2OgBN22dD6G2xP++ln2KMs4T09KpFTVd
 C3Qg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1697533620; x=1698138420;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=bgo6/o6F9GJ+i/Na8KtZEjz2ourig29cQcy60o4Bri8=;
 b=FvRDJKcfIrxnna/Vh9cOv48KKdHMplo1k9c7PVug2y4F0sFnhQuocffg8qvi/vO2Uz
 5PTUqgev8bBxsX7VgVNEPWO4r19krIPF/lCmEqpZ2V4xc97kzXZi/98cahGGm0bCTX6H
 uv3DG2laZNr9OVESuQlQ4Ua5NZm9dd2yreccXcCGO43geJiBbcOEY2MFRvF46ZkiQTLE
 80fK/V1FKHQifbcFshxFVv9ck8E774okhPBtYZij8YuRK3HWMfw0xYwnr4fs98aTJygN
 xkxwDfo8eZmryJUlVkuneG6JQp50xhZpUr8P0OMbTC7/YQbrJ3jXIaN+wC68u1xBTTG1
 QGoQ==
X-Gm-Message-State: AOJu0YzPP5sGJYRZ5hTnrHfGWSWciVObQ4RTjVCo8nSDKGPZ50vYVktR
 6PRgyEUgGypLm6Qos7z18dSkNg==
X-Google-Smtp-Source: AGHT+IFGCbvsS0uOcmJ8+ZdWpIAM6yyY3hI4h1XxALIkv8szD7Wg3MZXpQLMEVqrRb3Pn1lOG0msNw==
X-Received: by 2002:adf:e60b:0:b0:31c:8880:5d0f with SMTP id
 p11-20020adfe60b000000b0031c88805d0fmr1440738wrm.11.1697533620599; 
 Tue, 17 Oct 2023 02:07:00 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 v9-20020adfedc9000000b00323287186aasm1212079wro.32.2023.10.17.02.06.58
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 17 Oct 2023 02:07:00 -0700 (PDT)
Message-ID: <7a6e6266-2450-4838-3629-0d3d8d43f11e@blackwall.org>
Date: Tue, 17 Oct 2023 12:06:54 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231016131259.3302298-1-idosch@nvidia.com>
 <20231016131259.3302298-7-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231016131259.3302298-7-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 06/13] vxlan: mdb: Factor out a helper
 for remote entry size calculation
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

On 10/16/23 16:12, Ido Schimmel wrote:
> Currently, netlink notifications are sent for individual remote entries
> and not for the entire MDB entry itself.
> 
> Subsequent patches are going to add MDB get support which will require
> the VXLAN driver to reply with an entire MDB entry.
> 
> Therefore, as a preparation, factor out a helper to calculate the size
> of an individual remote entry. When determining the size of the reply
> this helper will be invoked for each remote entry in the MDB entry.
> 
> No functional changes intended.
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>   drivers/net/vxlan/vxlan_mdb.c | 28 +++++++++++++++++++---------
>   1 file changed, 19 insertions(+), 9 deletions(-)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>


