Return-Path: <bridge-bounces@lists.linux-foundation.org>
X-Original-To: lists.bridge@lfdr.de
Delivered-To: lists.bridge@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9829450E52C
	for <lists.bridge@lfdr.de>; Mon, 25 Apr 2022 18:07:01 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5B13C4086C;
	Mon, 25 Apr 2022 16:06:59 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0fpJs_xgSl97; Mon, 25 Apr 2022 16:06:58 +0000 (UTC)
Received: from lists.linuxfoundation.org (lf-lists.osuosl.org [140.211.9.56])
	by smtp4.osuosl.org (Postfix) with ESMTPS id B4B1D408DA;
	Mon, 25 Apr 2022 16:06:57 +0000 (UTC)
Received: from lf-lists.osuosl.org (localhost [127.0.0.1])
	by lists.linuxfoundation.org (Postfix) with ESMTP id 515BAC007C;
	Mon, 25 Apr 2022 16:06:57 +0000 (UTC)
X-Original-To: bridge@lists.linux-foundation.org
Delivered-To: bridge@lists.linuxfoundation.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists.linuxfoundation.org (Postfix) with ESMTP id 3C48FC002D
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 16:06:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2A234408BA
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 16:06:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0fiH_xK0xYdV for <bridge@lists.linux-foundation.org>;
 Mon, 25 Apr 2022 16:06:54 +0000 (UTC)
X-Greylist: whitelisted by SQLgrey-1.8.0
Received: from mail-pj1-x102d.google.com (mail-pj1-x102d.google.com
 [IPv6:2607:f8b0:4864:20::102d])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 1D009408B3
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 16:06:54 +0000 (UTC)
Received: by mail-pj1-x102d.google.com with SMTP id
 u6-20020a17090a1f0600b001d86bd69427so376032pja.5
 for <bridge@lists.linux-foundation.org>; Mon, 25 Apr 2022 09:06:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=networkplumber-org.20210112.gappssmtp.com; s=20210112;
 h=date:from:to:subject:message-id:in-reply-to:references:mime-version
 :content-transfer-encoding;
 bh=eSUUmvcNxUREKY9cfIXBqiFcqq7TWxDWmLrdLzNKTdU=;
 b=EKZUOtERmjlzbXufW4645zt3AX8Dp81DRfEiYA6+kWUhMRR3qkn/JamkKu2b/Ny02G
 dlBxN7CY3TxY4t8SdfHJjGd9T40h8MUEY0AImsXJSW8/ZkiqTEwuUGF5R2KbsXfWuSVf
 kOosTDhAkaDOuvuD9E/k+TGdqPErzhC7wMl7JVDA7xOuTI4XUVawX8+S5ooCIZCa63yE
 fEysmS1mtk4vLSpOJFLMcp+faGnMhiGs0OxF4NeFm+SnkOAxvb0MsBIbPoooIjtpYPhS
 XRpiPiwHTdTuUQUChwjTg5iwy75JYVBxk+Z1aQvvZ/XAvJnezxMv1PVxk/uDfLz7Q0Ew
 Q+VQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20210112;
 h=x-gm-message-state:date:from:to:subject:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=eSUUmvcNxUREKY9cfIXBqiFcqq7TWxDWmLrdLzNKTdU=;
 b=KKO7YEiq/Mz+h16vuG1BdfGNJMbbq/8DEU5tSg25nzOZwFO0Hb1z+e3DZQtXBECXIK
 SE7Kw8YWXE02Rd+Cq3OgSiXRHAXSdYAnjo81Bjch2RYeiqWPWLeSzvv8LaO3IKnhROzu
 YTHn6tIOLyY0psJjW/ibqIBPTF/B4gwa+pk9Mh7QMAGsHZ8zimVE0wdysX2Rv0bQFT9f
 z0Nmi+UnrXR/Rz5zypeoryXUzZgduHqP2oODVCqm+vHNixarFSmKeBXXTuNxtS9YuKWU
 8y2+S4FOWVyN6FYpt7r4FHSYgVPLatPOljh1OVLIV7VCgrD2RavSYQMBFNbGCDnfX/C3
 gsNg==
X-Gm-Message-State: AOAM532vVzdvyDdr4Mg2t6O1C8F6HmbM+E7NOp3YWGjD+GYiI+g8iSVC
 0t4L+WDFEncQsJy+meSy1KyOQw8VBs+fAw==
X-Google-Smtp-Source: ABdhPJzVSu1F4Hmq8GEw68XIH/GCjoLJBmeQdY1HdDC3GLemMgHT4W2KyVWU1LTE43HVz4EVbXt34g==
X-Received: by 2002:a17:902:9a81:b0:158:1c91:4655 with SMTP id
 w1-20020a1709029a8100b001581c914655mr19258211plp.162.1650902813111; 
 Mon, 25 Apr 2022 09:06:53 -0700 (PDT)
Received: from hermes.local (204-195-112-199.wavecable.com. [204.195.112.199])
 by smtp.gmail.com with ESMTPSA id
 j9-20020aa78009000000b004fde2dd78b0sm11611858pfi.109.2022.04.25.09.06.52
 for <bridge@lists.linux-foundation.org>
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 25 Apr 2022 09:06:52 -0700 (PDT)
Date: Mon, 25 Apr 2022 09:06:49 -0700
From: Stephen Hemminger <stephen@networkplumber.org>
To: bridge@lists.linux-foundation.org
Message-ID: <20220425090649.1b99fade@hermes.local>
In-Reply-To: <a99bfeb371857968a3fa734c00bd9b0e122719c1.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
References: <cover.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
 <a99bfeb371857968a3fa734c00bd9b0e122719c1.1650896000.git.eng.alaamohamedsoliman.am@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
Subject: Re: [Bridge] [PATCH net-next v4 2/2] net: vxlan: vxlan_core.c: Add
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

On Mon, 25 Apr 2022 16:25:07 +0200
Alaa Mohamed <eng.alaamohamedsoliman.am@gmail.com> wrote:

>  static int vxlan_fdb_parse(struct nlattr *tb[], struct vxlan_dev *vxlan,
>  			   union vxlan_addr *ip, __be16 *port, __be32 *src_vni,
> -			   __be32 *vni, u32 *ifindex, u32 *nhid)
> +			   __be32 *vni, u32 *ifindex, u32 *nhid, struct netlink_ext_ack *extack)
>  {
>  	struct net *net = dev_net(vxlan->dev);
>  	int err;
> 
>  	if (tb[NDA_NH_ID] && (tb[NDA_DST] || tb[NDA_VNI] || tb[NDA_IFINDEX] ||
> -	    tb[NDA_PORT]))
> -		return -EINVAL;
> +	    tb[NDA_PORT])) {
> +			NL_SET_ERR_MSG(extack,
> +						   "DST, VNI, ifindex and port are mutually exclusive with NH_ID");
> +			return -EINVAL;
> +		}

The indentation is off here?
