Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id AD76E50DB88
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 10:47:25 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CAADF60B27;
	Mon, 25 Apr 2022 08:47:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88rxZXG-vVde; Mon, 25 Apr 2022 08:47:22 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [IPv6:2605:bc80:3010:104::8cd3:938])
	by smtp3.osuosl.org (Postfix) with ESMTPS id 18FBA60B62;
	Mon, 25 Apr 2022 08:47:21 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id DFEADC007A;
	Mon, 25 Apr 2022 08:47:19 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 21C6AC002D
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 18:52:33 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 0A29381CFE
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 18:52:33 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=gmail.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id a3Cad-5h2vRp for <bridge@lists.linux-foundation.org>;
 Sun, 24 Apr 2022 18:52:32 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com
 [IPv6:2a00:1450:4864:20::432])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1DCD7819B8
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 18:52:32 +0000 (UTC)
Received: by mail-wr1-x432.google.com with SMTP id x18so18044752wrc.0
 for <bridge@lists.linux-foundation.org>; Sun, 24 Apr 2022 11:52:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20210112;
 h=message-id:date:mime-version:user-agent:subject:content-language:to
 :cc:references:from:in-reply-to:content-transfer-encoding;
 bh=lReuseCvVNEXlTNL6o6EN+A35b6tYTj8OfIs+Kswr2w=;
 b=Q/lDeS27Mli6BRmeY0+ReefxtLnq4WxEwOUeT23rab46xj9eLTLuRI+y6emQa/uvJ3
 yifh02I+4aZKTF/Vy/urexsI9DOfBN6/Kj4U0Gx1K9JVqsaatT8Oi3amtqIn6ixWZiHv
 XF9M01eykb6CK6J27qfas0wtFodk89XkyCgvO1B6dTvnLtP3+SRjiIOyaBU762tRIgc0
 fxOA5ZUa80Z0V2zzMwxGYyG2MhhjWo/D/J4a4Y17sALe1ZZ6E8LBhd3SmPFxchcimHwo
 FaWsMtf8VdXiZuEc1jFR1kSCszoDsbFSMWMp8h0/wGkm9GWRG4HO+kArfHJJJKzcJHkY
 d4dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
 :content-language:to:cc:references:from:in-reply-to
 :content-transfer-encoding;
 bh=lReuseCvVNEXlTNL6o6EN+A35b6tYTj8OfIs+Kswr2w=;
 b=qnhukCUjSMIftORMffzP7aDnDPhYTMZ3K1lTktF5/Tl0+YsnDzPPTpWMO73LEQuI9C
 vJWf5+ECCk39im22dSKcp/mMpRHMVbpcTjhFmoV15ftwTX78cvGhWBuJguLyxqAAE17/
 Qk3WQKhZ5W6OeG+XHF+7Q/H5hljVOcnOJUHHS2x3m45wSZaTIszlhk4Xr2b1yx8G25cr
 f7HGp0QRX16gGOgDCwqfBo+6I/rku9C6thjBsaLuYwNPL+Q4mWsgJ0Oq9dnG/so4DkOX
 l0TjcKPRUtglbYJhiPLDpw7PkO1DitFJJo02/Zy23nytEtI/Tg004z6POIUOvYdPHG4r
 AlIQ==
X-Gm-Message-State: AOAM533r0v044eHX61JDoMr615n/zKvpvULDRWbJK1gHe8DzUHIDVSoD
 HOMXDMZEcPRnrulvbP9ur1Q=
X-Google-Smtp-Source: ABdhPJzdSu+tOKnYLk2M4Bt2LpLZBmteIWBUSxTUVFX3oPW3/U02vyy5C9c3xv5wG+t2IljNl73spg==
X-Received: by 2002:a05:6000:381:b0:20a:8690:9ac6 with SMTP id
 u1-20020a056000038100b0020a86909ac6mr11485726wrf.209.1650826350182; 
 Sun, 24 Apr 2022 11:52:30 -0700 (PDT)
Received: from [192.168.1.5] ([197.57.78.84]) by smtp.gmail.com with ESMTPSA id
 a4-20020a056000188400b0020a9ec6e8e3sm7871526wri.55.2022.04.24.11.52.28
 (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
 Sun, 24 Apr 2022 11:52:29 -0700 (PDT)
Message-ID: <06622e4c-b9a5-1c4f-2764-a72733000b4e@gmail.com>
Date: Sun, 24 Apr 2022 20:52:27 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Content-Language: en-US
To: Julia Lawall <julia.lawall@inria.fr>
References: <cover.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <0d09ad611bb78b9113491007955f2211f3a06e82.1650800975.git.eng.alaamohamedsoliman.am@gmail.com>
 <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
From: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
In-Reply-To: <alpine.DEB.2.22.394.2204241813210.7691@hadrien>
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


On ٢٤‏/٤‏/٢٠٢٢ ١٨:١٥, Julia Lawall wrote:
>
> On Sun, 24 Apr 2022, Alaa Mohamed wrote:
>
>> Add extack to vxlan_fdb_delete and vxlan_fdb_parse
> It could be helpful to say more about what adding extack support involves.
>
>> Signed-off-by: Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com>
>> ---
>> changes in V2:
>> 	- fix spelling vxlan_fdb_delete
>> 	- add missing braces
>> 	- edit error message
>> ---
>> changes in V3:
>> 	fix errors reported by checkpatch.pl
> But your changes would seem to also be introducing more checkpatch errors,
> because the Linux kernel coding style puts a space before an { at the
> start of an if branch.
I ran checkpatch script before submitting this patch and got no error
>
> julia
>
>> ---
>>   drivers/net/vxlan/vxlan_core.c | 36 +++++++++++++++++++++++-----------
>>   1 file changed, 25 insertions(+), 11 deletions(-)
>>
>> diff --git a/drivers/net/vxlan/vxlan_core.c b/drivers/net/vxlan/vxlan_core.c
>> index cf2f60037340..4e1886655101 100644
>> --- a/drivers/net/vxlan/vxlan_core.c
>> +++ b/drivers/net/vxlan/vxlan_core.c
>> @@ -1129,19 +1129,23 @@ static void vxlan_fdb_dst_destroy(struct vxlan_dev *vxlan, struct vxlan_fdb *f,
>>
>>   static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>>   			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
>> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
>> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
>>   {
>>   	struct net *net = dev_net(vxlan->dev);
>>   	int err;
>>
>>   	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
>> -	    tb[NDA_PORT]))
>> -		return -EINVAL;
>> +	    tb[NDA_PORT])){
>> +			NL_SET_ERR_MSG(extack, "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
>> +			return -EINVAL;
>> +		}
>>
>>   	if (tb[NDA_DST]) {
>>   		err = vxlan_nla_get_addr(ip, tb[NDA_DST]);
>> -		if (err)
>> +		if (err){
>> +			NL_SET_ERR_MSG(extack, "Unsupported address family");
>>   			return err;
>> +		}
>>   	} else {
>>   		union vxlan_addr *remote = &vxlan->default_dst.remote_ip;
>>
>> @@ -1157,24 +1161,30 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>>   	}
>>
>>   	if (tb[NDA_PORT]) {
>> -		if (nla_len(tb[NDA_PORT]) != sizeof(__be16))
>> +		if (nla_len(tb[NDA_PORT]) != sizeof(__be16)){
>> +			NL_SET_ERR_MSG(extack, "Invalid vxlan port");
>>   			return -EINVAL;
>> +		}
>>   		*port = nla_get_be16(tb[NDA_PORT]);
>>   	} else {
>>   		*port = vxlan->cfg.dst_port;
>>   	}
>>
>>   	if (tb[NDA_VNI]) {
>> -		if (nla_len(tb[NDA_VNI]) != sizeof(u32))
>> +		if (nla_len(tb[NDA_VNI]) != sizeof(u32)){
>> +			NL_SET_ERR_MSG(extack, "Invalid vni");
>>   			return -EINVAL;
>> +		}
>>   		*vni = cpu_to_be32(nla_get_u32(tb[NDA_VNI]));
>>   	} else {
>>   		*vni = vxlan->default_dst.remote_vni;
>>   	}
>>
>>   	if (tb[NDA_SRC_VNI]) {
>> -		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32))
>> +		if (nla_len(tb[NDA_SRC_VNI]) != sizeof(u32)){
>> +			NL_SET_ERR_MSG(extack, "Invalid src vni");
>>   			return -EINVAL;
>> +		}
>>   		*src_vni = cpu_to_be32(nla_get_u32(tb[NDA_SRC_VNI]));
>>   	} else {
>>   		*src_vni = vxlan->default_dst.remote_vni;
>> @@ -1183,12 +1193,16 @@ static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>>   	if (tb[NDA_IFINDEX]) {
>>   		struct net_device *tdev;
>>
>> -		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32))
>> +		if (nla_len(tb[NDA_IFINDEX]) != sizeof(u32)){
>> +			NL_SET_ERR_MSG(extack, "Invalid ifindex");
>>   			return -EINVAL;
>> +		}
>>   		*ifindex = nla_get_u32(tb[NDA_IFINDEX]);
>>   		tdev = __dev_get_by_index(net, *ifindex);
>> -		if (!tdev)
>> +		if (!tdev){
>> +			NL_SET_ERR_MSG(extack,"Device not found");
>>   			return -EADDRNOTAVAIL;
>> +		}
>>   	} else {
>>   		*ifindex = 0;
>>   	}
>> @@ -1226,7 +1240,7 @@ static int vxlan_fdb_add(struct ndmsg *ndm, struct nlattr *tb[],
>>   		return -EINVAL;
>>
>>   	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
>> -			      &nhid);
>> +			      &nhid, extack);
>>   	if (err)
>>   		return err;
>>
>> @@ -1291,7 +1305,7 @@ static int vxlan_fdb_delete(struct ndmsg *ndm, struct nlattr *tb[],
>>   	int err;
>>
>>   	err = vxlan_fdb_parse(tb, vxlan, &ip, &port, &src_vni, &vni, &ifindex,
>> -			      &nhid);
>> +			      &nhid, extack);
>>   	if (err)
>>   		return err;
>>
>> --
>> 2.36.0
>>
>>
>>
