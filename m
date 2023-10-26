Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4247D7CD1
	for <lists.bridge@lfdr.de>; Thu, 26 Oct 2023 08:22:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id F30F460FD0;
	Thu, 26 Oct 2023 06:22:50 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org F30F460FD0
Authentication-Results: smtp3.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256 header.s=20230601 header.b=M7kZHiOS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sH6Dv4yhfvQT; Thu, 26 Oct 2023 06:22:50 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 7C54B6106A;
	Thu, 26 Oct 2023 06:22:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 7C54B6106A
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 08D71C008C;
	Thu, 26 Oct 2023 06:22:49 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 17311C0032
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 06:22:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D406181D4F
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 06:22:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D406181D4F
Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=blackwall-org.20230601.gappssmtp.com
 header.i=@blackwall-org.20230601.gappssmtp.com header.a=rsa-sha256
 header.s=20230601 header.b=M7kZHiOS
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id A4cntOO9Mqe5 for <bridge@lists.linux-foundation.org>;
 Thu, 26 Oct 2023 06:22:47 +0000 (UTC)
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com
 [IPv6:2a00:1450:4864:20::12a])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15F7A81CFE
 for <bridge@lists.linux-foundation.org>; Thu, 26 Oct 2023 06:22:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15F7A81CFE
Received: by mail-lf1-x12a.google.com with SMTP id
 2adb3069b0e04-50802148be9so547231e87.2
 for <bridge@lists.linux-foundation.org>; Wed, 25 Oct 2023 23:22:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20230601.gappssmtp.com; s=20230601; t=1698301365; x=1698906165;
 darn=lists.linux-foundation.org; 
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=aMs/lnDVBosAB87SvMFfqFQ68LKhkyMZWsGdReytLiw=;
 b=M7kZHiOSuxkDtmPPvFXGYKp7SG4b2sD1ZSTfLphxE2/4f7jsIfVbN8Hi4PA2PmCbqj
 7+Zi1UMNXFfOL4FhnKPD6aFqMTRsoPLB60J2LWuI1k++8wbHo88i/1IGw+QJhfISU2Mv
 rmqoo7Lhj1HhliP4O+WM5jEg2673CQKjfcWXxjR/TO6viMvz1UunL/RS4JuEWBOSgB5O
 qWllKqKB2Px3nBMHP+Ue8yGRmTduzzloLOtNHhw+h56Nz+NfCd2qZccaH4cCA7hUN3US
 Zqbin26i1RqnyI0Qeqk7FqIDiiidluctbbsWNRFmn2y5yRfYc3Ed9TWlrYnoBT24GPBt
 mkUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1698301365; x=1698906165;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=aMs/lnDVBosAB87SvMFfqFQ68LKhkyMZWsGdReytLiw=;
 b=mKVXXVqW21+JFCZaiF0HEOTyKmUaLOJrPDmxRS8jG/xY5fGz8ZazwQ7mIaXv0McimP
 gvWxwA46ztXBMk1Db25Mcspett+DxGKhFqUXI8SHEJgt1G2QgIHKVhKdgZsEvcs+bALW
 PK8jaQ3K+b+2ZKGyOVGkQft/scKGOARaeh77WWwMoqAZDdcNZ0S3g86mD8T9CDnIkUmi
 m3WHAo7Z0RkkIj3t81FjZiNHs1Ggpc8F7kSEeHgy66K4TMSgPp+WVQ12gWEL2SIZr2I3
 5uFq676sryNB9gRS37HG6CZiuIFr8quO6iOqYC7EA+QrsUgHQimbEPVAs/8XXEwoqhGn
 CG+g==
X-Gm-Message-State: AOJu0YzKvzwb961XXscMffNYFknSjoEUyaQHEQ0FRdbCzPgSI15rraad
 am5aksZpMh8D9APIyhzFL8feZA==
X-Google-Smtp-Source: AGHT+IE1vtXM3TiHv1a9F6ZOnwo0mWn9W2yM6p1bH9mZrKinEREfvo+2//4udq2k56A2T9knjWolDg==
X-Received: by 2002:a19:7509:0:b0:507:c763:27b7 with SMTP id
 y9-20020a197509000000b00507c76327b7mr12735192lfe.40.1698301364502; 
 Wed, 25 Oct 2023 23:22:44 -0700 (PDT)
Received: from [192.168.0.106] (haunt.prize.volia.net. [93.72.109.136])
 by smtp.gmail.com with ESMTPSA id
 n1-20020a5d4001000000b0032dc1fc84f2sm13634262wrp.46.2023.10.25.23.22.43
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Wed, 25 Oct 2023 23:22:44 -0700 (PDT)
Message-ID: <debc87e7-f3b9-8f46-e496-cd96b0202047@blackwall.org>
Date: Thu, 26 Oct 2023 09:22:43 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20231025123020.788710-1-idosch@nvidia.com>
 <20231025123020.788710-8-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20231025123020.788710-8-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
Cc: mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next v2 07/13] bridge: add MDB get uAPI
	attributes
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

On 10/25/23 15:30, Ido Schimmel wrote:
> Add MDB get attributes that correspond to the MDB set attributes used in
> RTM_NEWMDB messages. Specifically, add 'MDBA_GET_ENTRY' which will hold
> a 'struct br_mdb_entry' and 'MDBA_GET_ENTRY_ATTRS' which will hold
> 'MDBE_ATTR_*' attributes that are used as indexes (source IP and source
> VNI).
> 
> An example request will look as follows:
> 
> [ struct nlmsghdr ]
> [ struct br_port_msg ]
> [ MDBA_GET_ENTRY ]
> 	struct br_mdb_entry
> [ MDBA_GET_ENTRY_ATTRS ]
> 	[ MDBE_ATTR_SOURCE ]
> 		struct in_addr / struct in6_addr
> 	[ MDBE_ATTR_SRC_VNI ]
> 		u32
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
> 
> Notes:
>      v2:
>      * Add comment.
> 
>   include/uapi/linux/if_bridge.h | 18 ++++++++++++++++++
>   1 file changed, 18 insertions(+)
> 

Acked-by: Nikolay Aleksandrov <razor@blackwall.org>

