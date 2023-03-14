Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 99C9A6B921F
	for <lists.bridge@lfdr.de>; Tue, 14 Mar 2023 12:52:17 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 2E8D181468;
	Tue, 14 Mar 2023 11:52:16 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 2E8D181468
Authentication-Results: smtp1.osuosl.org;
	dkim=fail reason="signature verification failed" (2048-bit key) header.d=blackwall-org.20210112.gappssmtp.com header.i=@blackwall-org.20210112.gappssmtp.com header.a=rsa-sha256 header.s=20210112 header.b=UHIeTIbh
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xuhUDtp1TbLE; Tue, 14 Mar 2023 11:52:15 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id D4F53814B5;
	Tue, 14 Mar 2023 11:52:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D4F53814B5
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 87992C008A;
	Tue, 14 Mar 2023 11:52:14 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 5849CC0032
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:52:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3283F8146A
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:52:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3283F8146A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6rtldp9-lWD5 for <bridge@lists.linux-foundation.org>;
 Tue, 14 Mar 2023 11:52:12 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 94E9981468
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com
 [IPv6:2a00:1450:4864:20::431])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 94E9981468
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 11:52:12 +0000 (UTC)
Received: by mail-wr1-x431.google.com with SMTP id h17so59180wrt.8
 for <bridge@lists.linux-foundation.org>; Tue, 14 Mar 2023 04:52:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112; t=1678794731;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :from:to:cc:subject:date:message-id:reply-to;
 bh=pmNZdygJnAQ23YxPeMcptEgBWA7szbpuBbBzvQMSVCo=;
 b=UHIeTIbhvVf49zjI8NtD5Z6zlDH3+WhDYKavKzAoMJFNFURrBBrVECTacuI1buZ3Ss
 lMryy8VP8NaUyzaPbmy/jBKC6VJuvhMGAdVwqw7agzj7gDv3COpSLtoCPfn6usL5Ql2W
 cPVlfrrd2f1MVNI/BQ2GMMRzVlBkVlueDb/mfXTzr/WstTqS+fLTRzusnZbbynv7/+Se
 4o/SWQr3DznAC8AfU+lCAV2+6WSrjROYJD61mJf20mx70nRUP7PMMI1EdHF96BfKPQvY
 aCwyXJDK1eCtpvJ6146bTRVcha/ZA513ivMKsuh6RzF+DVcdpfoMWmxplJ6g/hQ8Z8l4
 0MsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112; t=1678794731;
 h=content-transfer-encoding:in-reply-to:from:references:cc:to
 :content-language:subject:user-agent:mime-version:date:message-id
 :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
 bh=pmNZdygJnAQ23YxPeMcptEgBWA7szbpuBbBzvQMSVCo=;
 b=5B9XQhkgtWzH3kdk8vQAbzmbz+mMU44VgdPJ3BbJHOMtCOUffOKg0Ol8DxYbCQUBBw
 wArY4SMz3kuehGCSfArZqsuHWsvrkbWanjvLtAluZ0140sFTxxaiDmwcOW0/o+L7dqsN
 6eAGQCTCSvLmACt9AFzUEp4Q3uOiqyOp63Jsxm7FwLgF32R/5QGSAbgrjiMklyU7qdL3
 QybkJfijtMsgRkyG9Mo54dnc8tHi5RL2iwm2Q9WWZjS3AeeLVbUB6lXQfz2lDBroXlEu
 uc69tAj9GOCSwEbWyvsSnbX55JQhZa4QOcffkT222EpMOoWNhC96USkc64CpC8R08psm
 vfAA==
X-Gm-Message-State: AO0yUKUMd0t0n7UC4CzfVuXm53yIgvJGHvr/wzCeaBFR27ATz0D7qXDg
 btPRSkUNDYylTnLJVmMxNM+/DVMZFMyzyUlqqvsIJQ==
X-Google-Smtp-Source: AK7set/DYsurM3Y/Ay8cF84ihvZw3WvNCmvKbtR0aCTPSMaAAh0eqqclWMa3g9wvKzxnnvl/cx3/fg==
X-Received: by 2002:a5d:4fc4:0:b0:2ce:a8dd:ba95 with SMTP id
 h4-20020a5d4fc4000000b002cea8ddba95mr5905894wrw.35.1678794730697; 
 Tue, 14 Mar 2023 04:52:10 -0700 (PDT)
Received: from [192.168.0.161] (62-73-72-43.ip.btc-net.bg. [62.73.72.43])
 by smtp.gmail.com with ESMTPSA id
 m1-20020adffa01000000b002c5526234d2sm1996376wrr.8.2023.03.14.04.52.10
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Tue, 14 Mar 2023 04:52:10 -0700 (PDT)
Message-ID: <8300e3cf-39d7-55bd-2614-db581fcfdc65@blackwall.org>
Date: Tue, 14 Mar 2023 13:52:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Content-Language: en-US
To: Ido Schimmel <idosch@nvidia.com>, netdev@vger.kernel.org,
 bridge@lists.linux-foundation.org
References: <20230313145349.3557231-1-idosch@nvidia.com>
 <20230313145349.3557231-6-idosch@nvidia.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <20230313145349.3557231-6-idosch@nvidia.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
Cc: petrm@nvidia.com, mlxsw@nvidia.com, edumazet@google.com, roopa@nvidia.com,
 kuba@kernel.org, pabeni@redhat.com, davem@davemloft.net
Subject: Re: [Bridge] [PATCH net-next 05/11] vxlan: Move address helpers to
 private headers
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

On 13/03/2023 16:53, Ido Schimmel wrote:
> Move the helpers out of the core C file to the private header so that
> they could be used by the upcoming MDB code.
> 
> While at it, constify the second argument of vxlan_nla_get_addr().
> 
> Signed-off-by: Ido Schimmel <idosch@nvidia.com>
> ---
>  drivers/net/vxlan/vxlan_core.c    | 47 -------------------------------
>  drivers/net/vxlan/vxlan_private.h | 45 +++++++++++++++++++++++++++++
>  2 files changed, 45 insertions(+), 47 deletions(-)
> 

Reviewed-by: Nikolay Aleksandrov <razor@blackwall.org>


