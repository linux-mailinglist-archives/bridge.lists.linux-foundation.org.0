Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 13A3650DB8D
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 37A88408F8;
	Mon, 25 Apr 2022 08:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sDfJbOP3cTEj; Mon, 25 Apr 2022 08:47:24 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id 0DA41408FD;
	Mon, 25 Apr 2022 08:47:22 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 44088C007C;
	Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 0849CC002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:20:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D4F1F408DB
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:20:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 40S5SGG5F4VN for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 19:20:57 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com
 [IPv6:2a00:1450:4864:20::32f])
 by smtp4.osuosl.org (Postfix) with ESMTPS id AF345408DA
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:20:56 +0000 (UTC)
Received: by mail-wm1-x32f.google.com with SMTP id
 m22-20020a05600c3b1600b00393ed50777aso35121wms.3
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 12:20:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=/+H/N/gmFAaOe4y0s+SRcJl0SyQ/fuybtesfMfHNNuQ=;
 b=L9/LRThN/qmaxvltFgT3Vsp3alFuHmSCHX8niKbw5nVt0f+GrPKdM+saUo8/tdJ5DH
 m0AMCUG97D2qOpTUIUhPAB1LV2EacwAKSkyzmxv7BAnp+FzQ0W1Dfp7aQ6g2Ix+jAcBX
 35TfCkIhfMG+4YHd7moTBuvU6uDfQXEaYt4XDpjRLD5/WLBjvosQIWGdQADpLpI+nMsN
 0Mxumf9sFHFtGBjiLKgIKfaXSlO28LuwSn0ICnECFbMeLP+6QU8d+Lj3jo5i/imkxMNP
 wZTeV39Gk0h/+2Jmf/KEcMr76MLwIWnpqzdk9D175he7a8eCIkDfw/iAcNcHdeLa3fz7
 18ag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=/+H/N/gmFAaOe4y0s+SRcJl0SyQ/fuybtesfMfHNNuQ=;
 b=nGadKHOj71N29W7914TUfCP2KRw9kiZSvrDn5wPVac2djBgJ/MoQe9hqZTe/6XICfX
 RN2sMPn71vLGt2EK160NTGP9eRwPI31NUbkfv9Lzvfszri5B8QO9EScOpeJiRSyEgMzx
 4a1EMwEnl3Jl1q9Qnu/ltx9rYXlJYRqHOF4dhOH7ErvdKOqYjJq5anXnDyxq94jJnUd3
 YETLT1fQ5QgfGacscyXEyjKDdKPvVS/BZ31CbqP96VhhorNfFD5bbwDCgKhK6knSOn+i
 Yb8X6CRSiZ1sTFx4jPgxiUKbbg+fj9/+2AmqXdQoCnmZeg3pGTAY1ICgx/Zc5BGhpaUE
 4sGQ==
X-Gm-Message-State: AOAM533nVoSVpCRIB7B/0P8LzweDEGEOxNqjbEGsKkPujF/tDaIdzNyR
 sWTfjoEa5uYRMVNuZrbmySA=
X-Google-Smtp-Source: ABdhPJyJ0RyDxNnhvav9Kr/ikInuVtAqUw64NFwOimQaTTCJHXwbyerv07oScutZL2Cky6iqy/leEg==
X-Received: by 2002:a1c:7415:0:b0:38e:bbbf:52d9 with SMTP id
 p21-20020a1c7415000000b0038ebbbf52d9mr22683155wmc.104.1650828054882; 
 Sun, 24 Apr 2022 12:20:54 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 e4-20020a5d6d04000000b0020a8bbbb72bsm8511452wrq.97.2022.04.24.12.20.52
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 12:20:54 -0700 (PDT)
Message-ID: <f06389af-d665-03c1-6256-5c9bbf89a321@gmail.com>
Date: Sun, 24 Apr 2022 21:20:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Nikolay Aleksandrov <razor@blackwall.org>,
 Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
 <3b8c790d-9e90-d920-9580-8e736435f7f3@blackwall.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <3b8c790d-9e90-d920-9580-8e736435f7f3@blackwall.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 vladimir.oltean@nxp.com, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, kuba@kernel.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com,
 intel-wired-lan@lists.osuosl.org
Subject: Re: [Bridge] [PATCH net-next v3 2/2] net: vxlan: vxlan_core.c: Add
 extack support to vxlan_fdb_delete
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


On ٢٤‏/٤‏/٢٠٢٢ ٢١:٠٣, Nikolay Aleksandrov wrote:
> On 24/04/2022 21:52, Alaa Mohamed wrote:
>> On ٢٤‏/٤‏/٢٠٢٢ ١٨:١٥, Julia Lawall wrote:
>>> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>>>
>>>> Add extack to vxlan_fdb_delete and vxlan_fdb_parse
>>> It could be helpful to say more about what adding extack support involves.
>>>
>>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>>> ---
>>>> changes in V2:
>>>>      - fix spelling vxlan_fdb_delete
>>>>      - add missing braces
>>>>      - edit error message
>>>> ---
>>>> changes in V3:
>>>>      fix errors reported by checkpatch.pl
>>> But your changes would seem to also be introducing more checkpatch errors,
>>> because the Linux kernel coding style puts a space before an { at the
>>> start of an if branch.
>> I ran checkpatch script before submitting this patch and got no error
> This is what I got:
> WARNING: suspect code indent for conditional statements (8, 24)
> #366: FILE: drivers/net/vxlan/vxlan_core.c:1137:
>   	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> [...]
> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
>
> WARNING: line length of 111 exceeds 100 columns
> #370: FILE: drivers/net/vxlan/vxlan_core.c:1139:
> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
>
> ERROR: space required before the open brace '{'
> #377: FILE: drivers/net/vxlan/vxlan_core.c:1145:
> +		if (err){
>
> ERROR: space required before the open brace '{'
> #389: FILE: drivers/net/vxlan/vxlan_core.c:1164:
> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
>
> ERROR: space required before the open brace '{'
> #400: FILE: drivers/net/vxlan/vxlan_core.c:1174:
> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
>
> ERROR: space required before the open brace '{'
> #411: FILE: drivers/net/vxlan/vxlan_core.c:1184:
> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
>
> ERROR: space required before the open brace '{'
> #423: FILE: drivers/net/vxlan/vxlan_core.c:1196:
> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
>
> ERROR: space required before the open brace '{'
> #430: FILE: drivers/net/vxlan/vxlan_core.c:1202:
> +		if (!tdev){
>
> ERROR: space required after that ',' (ctx:VxV)
> #431: FILE: drivers/net/vxlan/vxlan_core.c:1203:
> +			NL_SET_ERR_MSG(extack,"Device not found");
>
>
Thank you for sending that , but I don't know why I missed that when I 
ran the script. Anyway, I fixed all these errors as Julia said.

Thanks again,

Alaa

