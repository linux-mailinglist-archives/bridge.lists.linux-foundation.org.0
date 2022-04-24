Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 512AD50DB8E
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:28 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0097981839;
	Mon, 25 Apr 2022 08:47:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0BK2_zmLVl79; Mon, 25 Apr 2022 08:47:23 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp1.osuosl.org (Postfix) with ESMTPS id B4A908184F;
	Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id A24E5C0084;
	Mon, 25 Apr 2022 08:47:20 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3B6E8C002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 18:59:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 28B93823A0
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 18:59:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WJb7Hj-QK-tu for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 18:59:49 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com
 [IPv6:2a00:1450:4864:20::434])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 137B981D9F
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 18:59:48 +0000 (UTC)
Received: by mail-wr1-x434.google.com with SMTP id q7so10371235wrm.5
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 11:59:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=UetoLqapA6ApIfhlhvJs0ER3TpWmnZlfPjVC22O9EkM=;
 b=WwQHeOrWBO3Xhjgz+UueEcCs69FxpEIIQ6Y897xnnVOKr2y3oqq9bH/NbSRdLepY8m
 svuNmKA9VbRH7eboFBwvCpCeDDF0oqvxi9nmToG+8YqBlaVyzCPDwVRsdVpQ17gFttWO
 LWfQo0Qo2BuXuVMM1nsPbhraighTsW4D7RXIcRaRH5IsvEvzqJ8YeLo5gUmGrLDXsQ5f
 F1YWimulAVHvDgHF39OjMdmoaXSYnHDfLdhATUUQeMte9qU03jsEWw2atMeIlZjLD8Ts
 gZEiitddqUvpKB3A5ddmgdLkgOar88dTlpZ6Fgov2lx+Xw78XsKwjiILIXhWCWtOfdaA
 8eNw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=UetoLqapA6ApIfhlhvJs0ER3TpWmnZlfPjVC22O9EkM=;
 b=dDynh8oIjqHWxbQTZDCtKBsAsH+DVTaZMKMmCnN0BMvjon6dMQP9/9IOKriBpLfz64
 G8oPLwgXQ7CxODWSFMs57zdWrHEo2Aplz/c4YqjcB6UkQhflytxzAo2aqE/84T6L8/Hl
 lUl5HnWXiN69bBghWGlaMeJklesnN2IeumdelHya2sh7r3VLAZUt6xETYPUvEFWAPRsB
 Xsap1MNtQxnNKBNqJjnrZu45S+P9KuIrTjIZVDz7xwqFJ3TGCzP9p0CbDD4IA9atDZMN
 WZzOEg0kqROEpRREKhj6OdZTr9FjWHLWakQUP+ooqkmDgP2ogeQCrRRh9MziWAeIjEeT
 ygYg==
X-Gm-Message-State: AOAM5300Y1DMWklCd52HIw8tpuxA5deTFIoHHDCd9WtwEd3glOUe0ns5
 tXcwsaeKwxmn6s0qQNe9Yaw=
X-Google-Smtp-Source: ABdhPJxPPxL52UOgSeebd7hxhdRrnGgQpveMSkz2hQaRwG3p298ySC3BTHwdztZ2IFvy2MebH2XfgA==
X-Received: by 2002:a5d:588a:0:b0:204:1f72:2d90 with SMTP id
 n10-20020a5d588a000000b002041f722d90mr11707294wrf.651.1650826787183; 
 Sun, 24 Apr 2022 11:59:47 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 v18-20020adfc5d2000000b0020589b76704sm7878857wrg.70.2022.04.24.11.59.45
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 11:59:46 -0700 (PDT)
Message-ID: <e8ca868f-bbd6-c638-310c-d9c36aedb5d3@gmail.com>
Date: Sun, 24 Apr 2022 20:59:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
 <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
 <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204242054350.21756@hadrien>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Mon, 25 Apr 2022 08:47:17 +0000
Cc: shshaikh@marvell.com, jdenham@redhat.com, GR-Linux-NIC-Dev@marvell.com,
 manishc@marvell.com, alexandre.belloni@bootlin.com, outreachy@lists.linux.dev,
 netdev@vger.kernel.org, razor@blackwall.org, bridge@lists.linux-foundation.org,
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


On ٢٤‏/٤‏/٢٠٢٢ ٢٠:٥٦, Julia Lawall wrote:
>
> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>
>> On ٢٤/٤/٢٠٢٢ ١٨:١٥, Julia Lawall wrote:
>>> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>>>
>>>> Add extack to vxlan_fdb_delete and vxlan_fdb_parse
>>> It could be helpful to say more about what adding extack support involves.
>>>
>>>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>>>> ---
>>>> changes in V2:
>>>> 	- fix spelling vxlan_fdb_delete
>>>> 	- add missing braces
>>>> 	- edit error message
>>>> ---
>>>> changes in V3:
>>>> 	fix errors reported by checkpatch.pl
>>> But your changes would seem to also be introducing more checkpatch errors,
>>> because the Linux kernel coding style puts a space before an { at the
>>> start of an if branch.
>> I ran checkpatch script before submitting this patch and got no error
> OK, whether checkpatch complains or not doesn't really matter.  The point
> is that in the Linux kernel, one writes:
>
> if (...) {
>
> and not
>
> if (...){
>
> You can see other examples of ifs in the Linux kernel.


Yes, got it. I will fix it.


Thanks,

Alaa

>
> julia
>
>>> julia
>>>
>>>> ---
>>>>    drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
>>>>    1 file changed, 25 insertions(+), 11 deletions(-)
>>>>
>>>> diff --git a/drivers/net/vxlan/vxlan_core.c
>>>> b/drivers/net/vxlan/vxlan_core.c
>>>> index cf2f60037340..4e1886655101 100644
>>>> --- a/drivers/net/vxlan/vxlan_core.c
>>>> +++ b/drivers/net/vxlan/vxlan_core.c
>>>> @@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev
>>>> *vxlan, struct vxlan_fdb *f,
>>>>
>>>>    static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>>>>    			   union vxlan_addr *ip, __be16 *port, __be32
>>>> *src_vni,
>>>> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
>>>> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct
>>>> netlink_ext_ack *extack)
>>>>    {
>>>>    	struct net *net = dev_net(vxlan->dev);
>>>>    	int err;
>>>>
>>>>    	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
>>>> -	    tb[NDA_PORT]))
>>>> -		return -EINVAL;
>>>> +	    tb[NDA_PORT])){
>>>> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are
>>>> mutually exclusive with NH_ID");
>>>> +			return -EINVAL;
>>>> +		}
>>>>
>>>>    	if (tb[NDA_DST]) {
>>>>    		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
>>>> -		if (err)
>>>> +		if (err){
>>>> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>>>>    			return err;
>>>> +		}
>>>>    	} else {
>>>>    		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
>>>>
>>>> @@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[],
>>>> struct vxlan_dev *vxlan,
>>>>    	}
>>>>
>>>>    	if (tb[NDA_PORT]) {
>>>> -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
>>>> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*port = nla_get_be16(tb[NDA_PORT]);
>>>>    	} else {
>>>>    		*port = vxlan->cfg.dst_port;
>>>>    	}
>>>>
>>>>    	if (tb[NDA_VNI]) {
>>>> -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
>>>> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid vni");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
>>>>    	} else {
>>>>    		*vni = vxlan->default_dst.remote_vni;
>>>>    	}
>>>>
>>>>    	if (tb[NDA_SRC_VNI]) {
>>>> -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
>>>> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid src vni");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
>>>>    	} else {
>>>>    		*src_vni = vxlan->default_dst.remote_vni;
>>>> @@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[],
>>>> struct vxlan_dev *vxlan,
>>>>    	if (tb[NDA_IFINDEX]) {
>>>>    		struct net_device *tdev;
>>>>
>>>> -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
>>>> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
>>>> +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
>>>>    			return -EINVAL;
>>>> +		}
>>>>    		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
>>>>    		tdev = __dev_get_by_index(net, *ifindex);
>>>> -		if (!tdev)
>>>> +		if (!tdev){
>>>> +			NL_SET_ERR_MSG(extack,"Device not found");
>>>>    			return -EADDRNOTAVAIL;
>>>> +		}
>>>>    	} else {
>>>>    		*ifindex = 0;
>>>>    	}
>>>> @@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct
>>>> nlattr *tb[],
>>>>    		return -EINVAL;
>>>>
>>>>    	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
>>>> -			      &nhid);
>>>> +			      &nhid, extack);
>>>>    	if (err)
>>>>    		return err;
>>>>
>>>> @@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm,
>>>> struct nlattr *tb[],
>>>>    	int err;
>>>>
>>>>    	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
>>>> -			      &nhid);
>>>> +			      &nhid, extack);
>>>>    	if (err)
>>>>    		return err;
>>>>
>>>> --
>>>> 2.36.0
>>>>
>>>>
>>>>
> >
