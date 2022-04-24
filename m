Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 9D66550D45E
	for <lists.bridge@lfdr.de>; Sun, 24 Apr 2022 21:04:05 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id DF2A9824E2;
	Sun, 24 Apr 2022 19:04:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QPOFOXVpm9hq; Sun, 24 Apr 2022 19:04:03 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id 6FD0D824F4;
	Sun, 24 Apr 2022 19:04:02 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 26EC3C007C;
	Sun, 24 Apr 2022 19:04:02 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id E71B9C002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:04:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id D0D08824F4
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:04:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id rPhWnsmjdnZH for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 19:03:59 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com
 [IPv6:2a00:1450:4864:20::534])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 8F03F824E2
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 19:03:59 +0000 (UTC)
Received: by mail-ed1-x534.google.com with SMTP id p18so10950267edr.7
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 12:03:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=blackwall-org.20210112.gappssmtp.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=qJq22moH50D3yv21TnAqKX91eugYhGfPDI8P8HcZhgY=;
 b=u4f9uaPTM2qqSek3Ph5UN5CThDaMVDlVcGSOQ5d2lcd1ujtvYPbN+NMRXl4Q6K93KX
 tsRtItnFuZXrcIeMzf32whW8fYf/mK/BTclzbG7AEf2zI8xoKjfppuT3P+vhD70Y3Bka
 uo/+265lmvNoy4vRb7bB6bOXhCH5YaCaXT2npe4SsKJKh1wkWhI4M8RwLgbBH3ax2pFX
 27TYnAhsYH712KbrUwq7TdbsQ11T7lHRIXWNuLwFiPmV6p9TOHQFheUmO35D8sXkt1zF
 KFVs1/LlHNiYtQcictJS6vxebKuQM7fd9vvEBSgXAcW6JRlTLDdZsvHg008KyIGKQYBz
 2w2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=qJq22moH50D3yv21TnAqKX91eugYhGfPDI8P8HcZhgY=;
 b=F6SAtJtWteht/sM4BZhBm4Dn41LUS5nXsMVKKgJvFL4QBBhY7bvosalbQqge6Y4ZQ8
 QmcVvhtElLrAd+08mAAJKtakj8vENu0A6xlvtriIYPt7cdfg7ubfLKnaQpdGyO0dYIWv
 b9b/2YC89PefJHP84IKAStkHGSgUxRmsIkrKTwB0w7UduN7b8LSduzYWkwxndtQwY5sT
 y2U29X6RWJIPtU4612Iw8qNlVrydH4hcwRRHYQ0uJU26sRAIqVcf6KAyIg5aLPi60T6L
 QC0WkarMqC/Coiuo8FurVx0WPEikpVISYBbkS/fC0Prq5MaPy2F8nbqSVotXQYdO5ONC
 shSw==
X-Gm-Message-State: AOAM5300bzNknuuGjOMUuTpkoKH/M/iWHi5J3D6dbuphMr6MkT6ZNkmn
 d1K5uFcu2obHDg+MNHF83F84Mg==
X-Google-Smtp-Source: ABdhPJyUVaMPjUt+mdsjqcf930Ct9uv9xglikY4FGgz8i3dp7UkGqa4JXcCFi8ZR3vHIZp8MjPpMFw==
X-Received: by 2002:aa7:cb96:0:b0:413:8d05:ebc with SMTP id
 r22-20020aa7cb96000000b004138d050ebcmr15415684edt.81.1650827037726; 
 Sun, 24 Apr 2022 12:03:57 -0700 (PDT)
Received: from [192.168.0.111] (87-243-81-1.ip.btc-net.bg. [87.243.81.1])
 by smtp.gmail.com with ESMTPSA id
 q7-20020a170906540700b006d5eca5c9cfsm2847723ejo.191.2022.04.24.12.03.56
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 12:03:57 -0700 (PDT)
Message-ID: <3b8c790d-9e90-d920-9580-8e736435f7f3@blackwall.org>
Date: Sun, 24 Apr 2022 22:03:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>,
 Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
From: Nikolay Aleksandrov <razor@blackwall.org>
In-Reply-To: <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
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

On 24/04/2022 21:52, Alaa Mohamed wrote:
> 
> On ٢٤‏/٤‏/٢٠٢٢ ١٨:١٥, Julia Lawall wrote:
>>
>> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>>
>>> Add extack to vxlan_fdb_delete and vxlan_fdb_parse
>> It could be helpful to say more about what adding extack support involves.
>>
>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>> ---
>>> changes in V2:
>>>     - fix spelling vxlan_fdb_delete
>>>     - add missing braces
>>>     - edit error message
>>> ---
>>> changes in V3:
>>>     fix errors reported by checkpatch.pl
>> But your changes would seem to also be introducing more checkpatch errors,
>> because the Linux kernel coding style puts a space before an { at the
>> start of an if branch.
> I ran checkpatch script before submitting this patch and got no error

This is what I got:
WARNING: suspect code indent for conditional statements (8, 24)
#366: FILE: drivers/net/vxlan/vxlan_core.c:1137:
 	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
[...]
+			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");

WARNING: line length of 111 exceeds 100 columns
#370: FILE: drivers/net/vxlan/vxlan_core.c:1139:
+			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");

ERROR: space required before the open brace '{'
#377: FILE: drivers/net/vxlan/vxlan_core.c:1145:
+		if (err){

ERROR: space required before the open brace '{'
#389: FILE: drivers/net/vxlan/vxlan_core.c:1164:
+		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){

ERROR: space required before the open brace '{'
#400: FILE: drivers/net/vxlan/vxlan_core.c:1174:
+		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){

ERROR: space required before the open brace '{'
#411: FILE: drivers/net/vxlan/vxlan_core.c:1184:
+		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){

ERROR: space required before the open brace '{'
#423: FILE: drivers/net/vxlan/vxlan_core.c:1196:
+		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){

ERROR: space required before the open brace '{'
#430: FILE: drivers/net/vxlan/vxlan_core.c:1202:
+		if (!tdev){

ERROR: space required after that ',' (ctx:VxV)
#431: FILE: drivers/net/vxlan/vxlan_core.c:1203:
+			NL_SET_ERR_MSG(extack,"Device not found");



