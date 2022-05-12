Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 244DD524804
	for <lists.bridge@lfdr.de>; Thu, 12 May 2022 10:39:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BABC7416E8;
	Thu, 12 May 2022 08:39:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id c66Q47EfAtw6; Thu, 12 May 2022 08:39:46 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp4.osuosl.org (Postfix) with ESMTPS id E1435416E5;
	Thu, 12 May 2022 08:39:45 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 959EBC007E;
	Thu, 12 May 2022 08:39:45 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id C2CBBC002D
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 08:39:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A3E2483E93
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 08:39:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3L8kYBykAfLM for <bridge@lists.linux-foundation.org>;
 Thu, 12 May 2022 08:39:43 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com
 [IPv6:2a00:1450:4864:20::433])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9A46C83E91
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 08:39:43 +0000 (UTC)
Received: by mail-wr1-x433.google.com with SMTP id i5so6165013wrc.13
 for <bridge@lists.linux-foundation.org>; Thu, 12 May 2022 01:39:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=PCs+Ktha+vtmFq4XrExb1Mfp7UobjBZfKORd/6xUEnQ=;
 b=iH0GrPY8XRZBVfl7obokvqEguSGfgHDNW8WAl7iOB+g/Tlurte7GKIvSy3OEiTVO04
 eeh/9EJnTUt6gzmU0bJjxim8YpzFs4XRKTC8P/aVgEsfaam05KCZbdiKxj29+g1xkBf2
 UswmbtAGRTFvqTtmGRyBTdOYcZ91J6QPLUDDL9SOMpFlBJobtcsSwimEIYKHDMDu7YNx
 1BVEe5l3GsRKpiGKl6dB3pC9DEHDcu+83r0s6ZCjgVOR2/pWwazCqY3XbkZXfdcQz8RU
 dWawCs8ihVRvFOIIN+xL2Nx6s/6O7CHzwkCSwJ30NXqCG6IpajUa2NASiP9w4dKNfVa3
 GKXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=PCs+Ktha+vtmFq4XrExb1Mfp7UobjBZfKORd/6xUEnQ=;
 b=i3HDoSg+WzXF+jhABWn3esoEUWBdQh0DnkjbIJuJpSBDm/fzu4tCEfcxgvHXe0mD7B
 Bjvu0lPJRLs8Apx1KLY5UVWQrsCVD1sqju/fb85VmomReBUfcd+eAQfICZdnsmYFD+cr
 iK0Ite/7Zlm1ExOdQgVyveiME5m2lJ7T1s2fX9GUAqCAAbDbRSsZ2Vo761E9VhUMN5Ob
 cMOaeNiAKEPXBK7vmi8B0HnWiXmcRV6GSebSdHo3i+xZX2q0k/onZ+GYvlcWPBhc8Cea
 iFzmsJU+FXGUS3s9rD2hnegKlykUmaWm9Qck/ki1a1hQxfIZvU2egWdS9thZrWdKWKWH
 VB4w==
X-Gm-Message-State: AOAM531uc8VzmfYiiLfN8pz4FKus/r0mq6gb1WQGMMLlMJPIfGOddJUj
 3z1C2GuXZw6WPOAvEKiDrLE=
X-Google-Smtp-Source: ABdhPJy4QFCs5Y2zJviQsqFOIlBsNYoUoAruuqg+WA6gkEtBygBCD5Bsi3bVQffDIbA1Z2Vm9UAlEw==
X-Received: by 2002:adf:f748:0:b0:20c:86d5:c343 with SMTP id
 z8-20020adff748000000b0020c86d5c343mr26423046wrp.477.1652344781737; 
 Thu, 12 May 2022 01:39:41 -0700 (PDT)
Received: from [192.168.1.8] ([197.57.250.210])
 by smtp.gmail.com with ESMTPSA id
 c1-20020a5d4cc1000000b0020c5253d8ccsm3584868wrt.24.2022.05.12.01.39.40
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Thu, 12 May 2022 01:39:41 -0700 (PDT)
Message-ID: <191b395a-996b-597e-4ee9-06722ac3c776@gmail.com>
Date: Thu, 12 May 2022 10:39:38 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Content-Language: en-US
To: Jakub Kicinski <kuba@kernel.org>
References: <cover.1651762829.git.eng.alaamohamedsoliman.am@gmail.com>
 <ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com>
 <20220509154603.4a7b4243@kernel.org>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <20220509154603.4a7b4243@kernel.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
 jesse.brandeburg@intel.com, linux-kernel@vger.kernel.org,
 vladimir.oltean@nxp.com, sbrivio@redhat.com, claudiu.manoil@nxp.com,
 anthony.l.nguyen@intel.com, roopa@nvidia.com, intel-wired-lan@lists.osuosl.org,
 pabeni@redhat.com, davem@davemloft.net, UNGLinuxDriver@microchip.com
Subject: Re: [Bridge] [PATCH net-next v6 2/2] net: vxlan: Add extack support
 to vxlan_fdb_delete
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


On ١٠‏/٥‏/٢٠٢٢ ٠٠:٤٦, Jakub Kicinski wrote:
> On Thu,  5 May 2022 17:09:58 +0200 Alaa Mohamed wrote:
>> +			NL_SET_ERR_MSG(extack,
>> +						  "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> This continuation line still does not align with the opening bracket.
> Look here if your email client makes it hard to see:
>
> https://lore.kernel.org/all/ac4b6c650b6519cc56baa32ef20415460a5aa8ee.1651762830.git.eng.alaamohamedsoliman.am@gmail.com/
>
> Same story in patch 1:
>
>>   static int ocelot_port_fdb_del(struct ndmsg *ndm, struct nlattr *tb[],
>>   			       struct net_device *dev,
>> -			       const unsigned char *addr, u16 vid)
>> +			       const unsigned char *addr, u16 vid,
>> +				   struct netlink_ext_ack *extack)
> and here:
>
>>   static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>   			    struct net_device *dev,
>> -			    const unsigned char *addr, u16 vid)
>> +			    const unsigned char *addr, u16 vid,
>> +				struct netlink_ext_ack *extack)


I will fix it, thanks.

